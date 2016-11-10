.class public Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;
.super Ljava/lang/Object;
.source "ExpandedEAPMethod.java"

# interfaces
.implements Lcom/android/server/wifi/anqp/eap/AuthParam;


# instance fields
.field private final mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

.field private final mVendorID:I

.field private final mVendorType:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V
    .locals 1
    .param p1, "authInfoID"    # Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .param p2, "vendorID"    # I
    .param p3, "vendorType"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    iput p2, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    iput-wide p3, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;ILjava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "authInfoID"    # Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .param p2, "length"    # I
    .param p3, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x7

    if-eq p2, v2, :cond_0

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput-object p1, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "vndBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int v0, v2, v3

    .local v0, "id":I
    shl-int/lit8 v2, v0, 0x8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    iput v0, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
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

    const-class v4, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    .local v0, "that":Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->getVendorID()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->getVendorID()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->getVendorType()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->getVendorType()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    return-object v0
.end method

.method public getVendorID()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    return v0
.end method

.method public getVendorType()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auth method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mAuthInfoID:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;->mVendorType:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

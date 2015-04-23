.class public Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;
.super Ljava/lang/Object;
.source "HSConnectionCapabilityElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolTuple"
.end annotation


# instance fields
.field private final mPort:I

.field private final mProtocol:I

.field private final mStatus:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Runt protocol tuple: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mProtocol:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mPort:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .local v0, "statusNumber":I
    invoke-static {}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->values()[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->values()[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    move-result-object v1

    aget-object v1, v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mStatus:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mPort:I

    return v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mProtocol:I

    return v0
.end method

.method public getStatus()Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mStatus:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtocolTuple{mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtocolTuple;->mStatus:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "ThreeGPPNetworkElement.java"


# instance fields
.field private final mPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/CellularNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserData:I


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mPlmns:Ljava/util/List;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mUserData:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .local v0, "length":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_0

    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Runt payload"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Lcom/android/server/wifi/anqp/CellularNetwork;->buildCellularNetwork(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/CellularNetwork;

    move-result-object v1

    .local v1, "network":Lcom/android/server/wifi/anqp/CellularNetwork;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mPlmns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "network":Lcom/android/server/wifi/anqp/CellularNetwork;
    :cond_1
    return-void
.end method


# virtual methods
.method public getPlmns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/CellularNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mPlmns:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mUserData:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreeGPPNetwork{mUserData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mUserData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlmns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->mPlmns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

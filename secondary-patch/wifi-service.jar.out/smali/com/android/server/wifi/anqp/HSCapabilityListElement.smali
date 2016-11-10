.class public Lcom/android/server/wifi/anqp/HSCapabilityListElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "HSCapabilityListElement.java"


# instance fields
.field private final mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    iput-object v4, p0, Lcom/android/server/wifi/anqp/HSCapabilityListElement;->mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .local v0, "capID":I
    invoke-static {v0}, Lcom/android/server/wifi/anqp/Constants;->mapHS20Element(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v1

    .local v1, "capability":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v1, :cond_0

    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown capability: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/anqp/HSCapabilityListElement;->mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aput-object v1, v4, v2

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .end local v0    # "capID":I
    .end local v1    # "capability":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCapabilities()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSCapabilityListElement;->mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSCapabilityList{mCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSCapabilityListElement;->mCapabilities:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/server/wifi/anqp/HSIconFileElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "HSIconFileElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;
    }
.end annotation


# instance fields
.field private final mIconData:[B

.field private final mStatusCode:Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 5
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

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Truncated icon file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    .local v1, "statusID":I
    invoke-static {}, Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;->values()[Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-static {}, Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;->values()[Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    move-result-object v2

    aget-object v2, v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mStatusCode:Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    const/4 v2, 0x1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p2, v2, v3}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mType:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int v0, v2, v3

    .local v0, "dataLength":I
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mIconData:[B

    iget-object v2, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mIconData:[B

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void

    .end local v0    # "dataLength":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIconData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mIconData:[B

    return-object v0
.end method

.method public getStatusCode()Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mStatusCode:Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSIconFile{mStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mStatusCode:Lcom/android/server/wifi/anqp/HSIconFileElement$StatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIconData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/HSIconFileElement;->mIconData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/server/wifi/anqp/CellularNetwork;
.super Ljava/lang/Object;
.source "CellularNetwork.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final PLMNListType:I


# instance fields
.field private final mMccMnc:Ljava/util/List;
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
.method private constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "plmnCount"    # I
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/wifi/anqp/CellularNetwork;->mMccMnc:Ljava/util/List;

    :goto_0
    if-lez p1, :cond_2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v11, :cond_0

    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Truncated PLMN info"

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-array v4, v11, [B

    .local v4, "plmn":[B
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    aget-byte v5, v4, v8

    shl-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xf00

    aget-byte v6, v4, v8

    and-int/lit16 v6, v6, 0xf0

    or-int/2addr v5, v6

    aget-byte v6, v4, v9

    and-int/lit8 v6, v6, 0xf

    or-int v0, v5, v6

    .local v0, "mcc":I
    aget-byte v5, v4, v10

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xf0

    aget-byte v6, v4, v10

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int v2, v5, v6

    .local v2, "mnc":I
    aget-byte v5, v4, v9

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v3, v5, 0xf

    .local v3, "n2":I
    const/16 v5, 0xf

    if-eq v3, v5, :cond_1

    const-string v5, "%03x%03x"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "mccMnc":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/anqp/CellularNetwork;->mMccMnc:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string v5, "%03x%02x"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .end local v0    # "mcc":I
    .end local v2    # "mnc":I
    .end local v3    # "n2":I
    .end local v4    # "plmn":[B
    :cond_2
    return-void
.end method

.method public static buildCellularNetwork(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/CellularNetwork;
    .locals 4
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .local v0, "iei":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v2, v3, 0x7f

    .local v2, "plmnLen":I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .local v1, "plmnCount":I
    new-instance v3, Lcom/android/server/wifi/anqp/CellularNetwork;

    invoke-direct {v3, v1, p0}, Lcom/android/server/wifi/anqp/CellularNetwork;-><init>(ILjava/nio/ByteBuffer;)V

    goto :goto_0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/CellularNetwork;->mMccMnc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PLMN:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/wifi/anqp/CellularNetwork;->mMccMnc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "mccMnc":Ljava/lang/String;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

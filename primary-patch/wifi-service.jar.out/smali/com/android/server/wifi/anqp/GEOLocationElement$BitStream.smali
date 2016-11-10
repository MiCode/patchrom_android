.class Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;
.super Ljava/lang/Object;
.source "GEOLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/GEOLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitStream"
.end annotation


# instance fields
.field private bitOffset:I

.field private final data:[B


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "octets"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->data:[B

    return-void
.end method

.method private append(JI)V
    .locals 13
    .param p1, "value"    # J
    .param p3, "width"    # I

    .prologue
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Appending %x:%d\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v3, p3, -0x1

    .local v3, "sbit":I
    :goto_0
    if-ltz v3, :cond_1

    iget v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->bitOffset:I

    ushr-int/lit8 v0, v5, 0x3

    .local v0, "b0":I
    iget v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->bitOffset:I

    and-int/lit8 v1, v5, 0x7

    .local v1, "dbit":I
    add-int/lit8 v5, v3, -0x7

    add-int v4, v5, v1

    .local v4, "shr":I
    const/16 v5, 0xff

    ushr-int v2, v5, v1

    .local v2, "dmask":I
    if-ltz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->data:[B

    iget-object v6, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->data:[B

    aget-byte v6, v6, v0

    xor-int/lit8 v7, v2, -0x1

    and-int/2addr v6, v7

    int-to-long v6, v6

    ushr-long v8, p1, v4

    int-to-long v10, v2

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    iget v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->bitOffset:I

    rsub-int/lit8 v6, v1, 0x8

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->bitOffset:I

    rsub-int/lit8 v5, v1, 0x8

    sub-int/2addr v3, v5

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->data:[B

    iget-object v6, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->data:[B

    aget-byte v6, v6, v0

    xor-int/lit8 v7, v2, -0x1

    and-int/2addr v6, v7

    int-to-long v6, v6

    neg-int v8, v4

    shl-long v8, p1, v8

    int-to-long v10, v2

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    iget v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->bitOffset:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->bitOffset:I

    const/4 v3, -0x1

    goto :goto_0

    .end local v0    # "b0":I
    .end local v1    # "dbit":I
    .end local v2    # "dmask":I
    .end local v4    # "shr":I
    :cond_1
    return-void
.end method

.method private getOctets()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->data:[B

    return-object v0
.end method

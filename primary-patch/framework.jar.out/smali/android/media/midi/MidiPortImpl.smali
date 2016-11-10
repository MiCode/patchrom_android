.class Landroid/media/midi/MidiPortImpl;
.super Ljava/lang/Object;
.source "MidiPortImpl.java"


# static fields
.field private static final DATA_PACKET_OVERHEAD:I = 0x9

.field public static final MAX_PACKET_DATA_SIZE:I = 0x3f7

.field public static final MAX_PACKET_SIZE:I = 0x400

.field public static final PACKET_TYPE_DATA:I = 0x1

.field public static final PACKET_TYPE_FLUSH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MidiPort"

.field private static final TIMESTAMP_SIZE:I = 0x8


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataOffset([BI)I
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "bufferLength"    # I

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public static getDataSize([BI)I
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "bufferLength"    # I

    .prologue
    add-int/lit8 v0, p1, -0x9

    return v0
.end method

.method public static getPacketTimestamp([BI)J
    .locals 11
    .param p0, "buffer"    # [B
    .param p1, "bufferLength"    # I

    .prologue
    const/16 v10, 0x8

    move v2, p1

    .local v2, "offset":I
    const-wide/16 v4, 0x0

    .local v4, "timestamp":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_0

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    .local v0, "b":I
    shl-long v6, v4, v10

    int-to-long v8, v0

    or-long v4, v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "b":I
    :cond_0
    return-wide v4
.end method

.method public static getPacketType([BI)I
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "bufferLength"    # I

    .prologue
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    return v0
.end method

.method public static packData([BIIJ[B)I
    .locals 5
    .param p0, "message"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "timestamp"    # J
    .param p5, "dest"    # [B

    .prologue
    const/16 v4, 0x8

    const/16 v3, 0x3f7

    if-le p2, v3, :cond_0

    const/16 p2, 0x3f7

    :cond_0
    const/4 v1, 0x0

    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .local v2, "length":I
    const/4 v3, 0x1

    aput-byte v3, p5, v1

    invoke-static {p0, p1, p5, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v1, p2, 0x1

    .end local v2    # "length":I
    .restart local v1    # "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "length":I
    .restart local v2    # "length":I
    :goto_0
    if-ge v0, v4, :cond_1

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "length":I
    .restart local v1    # "length":I
    long-to-int v3, p3

    int-to-byte v3, v3

    aput-byte v3, p5, v2

    shr-long/2addr p3, v4

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "length":I
    .restart local v2    # "length":I
    goto :goto_0

    :cond_1
    return v2
.end method

.method public static packFlush([B)I
    .locals 2
    .param p0, "dest"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-byte v1, p0, v0

    const/4 v0, 0x1

    return v0
.end method

.class Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;
.super Ljava/lang/Object;
.source "GEOLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/GEOLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseBitStream"
.end annotation


# instance fields
.field private mBitoffset:I

.field private final mOctets:[B


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "octets"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mOctets:[B

    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mOctets:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/GEOLocationElement$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Lcom/android/server/wifi/anqp/GEOLocationElement$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->sliceOff(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getBits(BII)I
    .locals 2
    .param p0, "b"    # B
    .param p1, "b0"    # I
    .param p2, "width"    # I

    .prologue
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    .local v0, "mask":I
    rsub-int/lit8 v1, p1, 0x8

    sub-int/2addr v1, p2

    shr-int v1, p0, v1

    and-int/2addr v1, v0

    return v1
.end method

.method private sliceOff(I)J
    .locals 12
    .param p1, "bits"    # I

    .prologue
    iget v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mBitoffset:I

    add-int v0, v7, p1

    .local v0, "bn":I
    move v2, p1

    .local v2, "remaining":I
    const-wide/16 v4, 0x0

    .local v4, "value":J
    :goto_0
    iget v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mBitoffset:I

    if-ge v7, v0, :cond_0

    iget v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mBitoffset:I

    and-int/lit8 v3, v7, 0x7

    .local v3, "sbit":I
    iget v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mBitoffset:I

    ushr-int/lit8 v1, v7, 0x3

    .local v1, "octet":I
    rsub-int/lit8 v7, v3, 0x8

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "width":I
    shl-long v8, v4, v6

    iget-object v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mOctets:[B

    aget-byte v7, v7, v1

    invoke-static {v7, v3, v6}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->getBits(BII)I

    move-result v7

    int-to-long v10, v7

    or-long v4, v8, v10

    iget v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mBitoffset:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mBitoffset:I

    sub-int/2addr v2, v6

    goto :goto_0

    .end local v1    # "octet":I
    .end local v3    # "sbit":I
    .end local v6    # "width":I
    :cond_0
    return-wide v4
.end method

.class public Lcom/android/server/wifi/anqp/GEOLocationElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "GEOLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/GEOLocationElement$1;,
        Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;,
        Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;,
        Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;,
        Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;,
        Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;
    }
.end annotation


# static fields
.field private static final ALT_FRACTION_SIZE:I = 0x8

.field private static final ALT_TYPE_WIDTH:I = 0x4

.field private static final ALT_WIDTH:I = 0x1e

.field private static final DATUM_WIDTH:I = 0x8

.field private static final ELEMENT_ID:I = 0x7b

.field private static final GEO_LOCATION_LENGTH:I = 0x10

.field private static final LL_FRACTION_SIZE:I = 0x19

.field private static final LL_WIDTH:I = 0x22

.field private static final LOG2_FACTOR:D

.field private static final RES_WIDTH:I = 0x6


# instance fields
.field private final mAltitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

.field private final mAltitudeType:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

.field private final mDatum:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

.field private final mLatitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

.field private final mLongitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/anqp/GEOLocationElement;->LOG2_FACTOR:D

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 22
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v10, v0, 0xff

    .local v10, "locLength":I
    const/16 v17, 0x10

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "GeoLocation length field value "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " incorrect, expected 16"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v17

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Bad buffer length "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", expected 16"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_1
    new-instance v16, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;-><init>(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/GEOLocationElement$1;)V

    .local v16, "reverseBitStream":Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;
    const/16 v17, 0x6

    # invokes: Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->sliceOff(I)J
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->access$100(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v14, v0

    .local v14, "rawLatRes":I
    const/16 v17, 0x22

    # invokes: Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->sliceOff(I)J
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->access$100(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    move-result-wide v18

    const/16 v17, 0x19

    const/16 v20, 0x22

    move-wide/from16 v0, v18

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/GEOLocationElement;->fixToFloat(JII)D

    move-result-wide v8

    .local v8, "latitude":D
    if-eqz v14, :cond_2

    new-instance v17, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    int-to-long v0, v14

    move-wide/from16 v18, v0

    const/16 v20, 0x22

    const/16 v21, 0x19

    invoke-static/range {v18 .. v21}, Lcom/android/server/wifi/anqp/GEOLocationElement;->bitsToAbsResolution(JII)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v8, v9, v1}, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;-><init>(DI)V

    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/anqp/GEOLocationElement;->mLatitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    const/16 v17, 0x6

    # invokes: Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->sliceOff(I)J
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->access$100(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v15, v0

    .local v15, "rawLonRes":I
    const/16 v17, 0x22

    # invokes: Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->sliceOff(I)J
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->access$100(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    move-result-wide v18

    const/16 v17, 0x19

    const/16 v20, 0x22

    move-wide/from16 v0, v18

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/GEOLocationElement;->fixToFloat(JII)D

    move-result-wide v12

    .local v12, "longitude":D
    if-eqz v15, :cond_3

    new-instance v17, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    int-to-long v0, v15

    move-wide/from16 v18, v0

    const/16 v20, 0x22

    const/16 v21, 0x19

    invoke-static/range {v18 .. v21}, Lcom/android/server/wifi/anqp/GEOLocationElement;->bitsToAbsResolution(JII)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v12, v13, v1}, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;-><init>(DI)V

    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/anqp/GEOLocationElement;->mLongitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    const/16 v17, 0x4

    # invokes: Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->sliceOff(I)J
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->access$100(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v4, v0

    .local v4, "altType":I
    invoke-static {}, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->values()[Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_4

    invoke-static {}, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->values()[Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    move-result-object v17

    aget-object v17, v17, v4

    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/anqp/GEOLocationElement;->mAltitudeType:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    const/16 v17, 0x6

    # invokes: Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->sliceOff(I)J
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->access$100(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v11, v0

    .local v11, "rawAltRes":I
    const/16 v17, 0x1e

    # invokes: Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->sliceOff(I)J
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->access$100(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    move-result-wide v18

    const/16 v17, 0x8

    const/16 v20, 0x1e

    move-wide/from16 v0, v18

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/GEOLocationElement;->fixToFloat(JII)D

    move-result-wide v6

    .local v6, "altitude":D
    if-eqz v11, :cond_5

    new-instance v17, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    int-to-long v0, v11

    move-wide/from16 v18, v0

    const/16 v20, 0x1e

    const/16 v21, 0x8

    invoke-static/range {v18 .. v21}, Lcom/android/server/wifi/anqp/GEOLocationElement;->bitsToAbsResolution(JII)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;-><init>(DI)V

    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/anqp/GEOLocationElement;->mAltitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    const/16 v17, 0x8

    # invokes: Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->sliceOff(I)J
    invoke-static/range {v16 .. v17}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->access$100(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .local v5, "datumValue":I
    invoke-static {}, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->values()[Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_6

    invoke-static {}, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->values()[Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    move-result-object v17

    aget-object v17, v17, v5

    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/anqp/GEOLocationElement;->mDatum:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    return-void

    .end local v4    # "altType":I
    .end local v5    # "datumValue":I
    .end local v6    # "altitude":D
    .end local v11    # "rawAltRes":I
    .end local v12    # "longitude":D
    .end local v15    # "rawLonRes":I
    :cond_2
    new-instance v17, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v9}, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;-><init>(D)V

    goto/16 :goto_0

    .restart local v12    # "longitude":D
    .restart local v15    # "rawLonRes":I
    :cond_3
    new-instance v17, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    move-object/from16 v0, v17

    invoke-direct {v0, v12, v13}, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;-><init>(D)V

    goto/16 :goto_1

    .restart local v4    # "altType":I
    :cond_4
    sget-object v17, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    goto :goto_2

    .restart local v6    # "altitude":D
    .restart local v11    # "rawAltRes":I
    :cond_5
    new-instance v17, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;-><init>(D)V

    goto :goto_3

    .restart local v5    # "datumValue":I
    :cond_6
    sget-object v17, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    goto :goto_4
.end method

.method private static absResolutionToBits(III)I
    .locals 1
    .param p0, "resolution"    # I
    .param p1, "fieldWidth"    # I
    .param p2, "fractionBits"    # I

    .prologue
    sub-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p0

    return v0
.end method

.method private static bitsToAbsResolution(JII)I
    .locals 2
    .param p0, "bits"    # J
    .param p2, "fieldWidth"    # I
    .param p3, "fractionBits"    # I

    .prologue
    sub-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    long-to-int v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method static fixToFloat(JII)D
    .locals 8
    .param p0, "value"    # J
    .param p2, "fractionSize"    # I
    .param p3, "width"    # I

    .prologue
    const-wide/16 v6, 0x1

    add-int/lit8 v2, p3, -0x1

    shl-long v0, v6, v2

    .local v0, "sign":J
    and-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    neg-long p0, p0

    sub-long v2, v0, v6

    and-long/2addr v2, p0

    long-to-double v2, v2

    neg-double v2, v2

    shl-long v4, v6, p2

    long-to-double v4, v4

    div-double/2addr v2, v4

    :goto_0
    return-wide v2

    :cond_0
    sub-long v2, v0, v6

    and-long/2addr v2, p0

    long-to-double v2, v2

    shl-long v4, v6, p2

    long-to-double v4, v4

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method private static floatToFix(DII)J
    .locals 6
    .param p0, "value"    # D
    .param p2, "fractionSize"    # I
    .param p3, "width"    # I

    .prologue
    const-wide/16 v4, 0x1

    shl-long v0, v4, p2

    long-to-double v0, v0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    shl-long v2, v4, p3

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static getResolution(D)I
    .locals 4
    .param p0, "variance"    # D

    .prologue
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/android/server/wifi/anqp/GEOLocationElement;->LOG2_FACTOR:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getAltitude()Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mAltitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    return-object v0
.end method

.method public getAltitudeType()Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mAltitudeType:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    return-object v0
.end method

.method public getDatum()Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mDatum:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    return-object v0
.end method

.method public getLatitude()Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mLatitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    return-object v0
.end method

.method public getLongitude()Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mLongitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GEOLocation{mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mLatitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mLongitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mAltitude:Lcom/android/server/wifi/anqp/GEOLocationElement$RealValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAltitudeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mAltitudeType:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDatum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/GEOLocationElement;->mDatum:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Landroid/net/NetworkStatsHistory;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsHistory$ParcelUtils;,
        Landroid/net/NetworkStatsHistory$DataStreamUtils;,
        Landroid/net/NetworkStatsHistory$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ACTIVE_TIME:I = 0x1

.field public static final FIELD_ALL:I = -0x1

.field public static final FIELD_OPERATIONS:I = 0x20

.field public static final FIELD_RX_BYTES:I = 0x2

.field public static final FIELD_RX_PACKETS:I = 0x4

.field public static final FIELD_TX_BYTES:I = 0x8

.field public static final FIELD_TX_PACKETS:I = 0x10

.field private static final VERSION_ADD_ACTIVE:I = 0x3

.field private static final VERSION_ADD_PACKETS:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# instance fields
.field private activeTime:[J

.field private bucketCount:I

.field private bucketDuration:J

.field private bucketStart:[J

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private txBytes:[J

.field private txPackets:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 560
    new-instance v0, Landroid/net/NetworkStatsHistory$1;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "bucketDuration"

    .prologue
    .line 92
    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 93
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .parameter "bucketDuration"
    .parameter "initialSize"

    .prologue
    .line 96
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 97
    return-void
.end method

.method public constructor <init>(JII)V
    .locals 1
    .parameter "bucketDuration"
    .parameter "initialSize"
    .parameter "fields"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 101
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 102
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 103
    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 104
    :cond_1
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_2

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 105
    :cond_2
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_3

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 106
    :cond_3
    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_4

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 107
    :cond_4
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_5

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 108
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 113
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 114
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 115
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 116
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 117
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 118
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 119
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 120
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 137
    .local v0, version:I
    packed-switch v0, :pswitch_data_0

    .line 164
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 140
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 141
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 142
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 143
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 144
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 145
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 146
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 167
    :goto_0
    return-void

    .line 151
    :pswitch_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 152
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 153
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    :goto_1
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 155
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 156
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 157
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 158
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 159
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 160
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    goto :goto_1

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static addLong([JIJ)V
    .locals 2
    .parameter "array"
    .parameter "i"
    .parameter "value"

    .prologue
    .line 579
    if-eqz p0, :cond_0

    aget-wide v0, p0, p1

    add-long/2addr v0, p2

    aput-wide v0, p0, p1

    .line 580
    :cond_0
    return-void
.end method

.method private ensureBuckets(JJ)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 341
    iget-wide v3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v3, p1, v3

    sub-long/2addr p1, v3

    .line 342
    iget-wide v3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iget-wide v5, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v5, p3, v5

    sub-long/2addr v3, v5

    iget-wide v5, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long/2addr v3, v5

    add-long/2addr p3, v3

    .line 344
    move-wide v1, p1

    .local v1, now:J
    :goto_0
    cmp-long v3, v1, p3

    if-gez v3, :cond_1

    .line 346
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v4, 0x0

    iget v5, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v3, v4, v5, v1, v2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 347
    .local v0, index:I
    if-gez v0, :cond_0

    .line 349
    xor-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3, v1, v2}, Landroid/net/NetworkStatsHistory;->insertBucket(IJ)V

    .line 344
    :cond_0
    iget-wide v3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v1, v3

    goto :goto_0

    .line 352
    .end local v0           #index:I
    :cond_1
    return-void
.end method

.method private static getLong([JIJ)J
    .locals 0
    .parameter "array"
    .parameter "i"
    .parameter "value"

    .prologue
    .line 571
    if-eqz p0, :cond_0

    aget-wide p2, p0, p1

    .end local p2
    :cond_0
    return-wide p2
.end method

.method private insertBucket(IJ)V
    .locals 7
    .parameter "index"
    .parameter "start"

    .prologue
    const-wide/16 v5, 0x0

    .line 359
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v4, v4

    if-lt v3, v4, :cond_5

    .line 360
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v3, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    .line 361
    .local v2, newLength:I
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 362
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 363
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 364
    :cond_1
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 365
    :cond_2
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 366
    :cond_3
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 367
    :cond_4
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 371
    .end local v2           #newLength:I
    :cond_5
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge p1, v3, :cond_b

    .line 372
    add-int/lit8 v0, p1, 0x1

    .line 373
    .local v0, dstPos:I
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int v1, v3, p1

    .line 375
    .local v1, length:I
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    :cond_6
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    :cond_7
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    :cond_8
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    :cond_9
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    :cond_a
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    .end local v0           #dstPos:I
    .end local v1           #length:I
    :cond_b
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aput-wide p2, v3, p1

    .line 385
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, p1, v5, v6}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 386
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, p1, v5, v6}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 387
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, p1, v5, v6}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 388
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, p1, v5, v6}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 389
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, p1, v5, v6}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 390
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, p1, v5, v6}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 391
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 392
    return-void
.end method

.method public static randomLong(Ljava/util/Random;JJ)J
    .locals 4
    .parameter "r"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 527
    long-to-float v0, p1

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-long v2, p3, p1

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private static setLong([JIJ)V
    .locals 0
    .parameter "array"
    .parameter "i"
    .parameter "value"

    .prologue
    .line 575
    if-eqz p0, :cond_0

    aput-wide p2, p0, p1

    .line 576
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 4
    .parameter "prefix"
    .parameter "pw"
    .parameter "fullHistory"

    .prologue
    const/4 v1, 0x0

    .line 531
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    const-string v2, "NetworkStatsHistory: bucketDuration="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 534
    if-eqz p3, :cond_7

    .line 535
    .local v1, start:I
    :goto_0
    if-lez v1, :cond_0

    .line 536
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    const-string v2, "  (omitting "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " buckets)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    :cond_0
    move v0, v1

    .local v0, i:I
    :goto_1
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v2, :cond_8

    .line 541
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    const-string v2, "  bucketStart="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 543
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v2, :cond_1

    const-string v2, " activeTime="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    aget-wide v2, v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 544
    :cond_1
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_2

    const-string v2, " rxBytes="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 545
    :cond_2
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_3

    const-string v2, " rxPackets="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v2, v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 546
    :cond_3
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_4

    const-string v2, " txBytes="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 547
    :cond_4
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_5

    const-string v2, " txPackets="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v2, v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 548
    :cond_5
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_6

    const-string v2, " operations="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v2, v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 549
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 534
    .end local v0           #i:I
    .end local v1           #start:I
    :cond_7
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v2, v2, -0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_0

    .line 551
    .restart local v0       #i:I
    .restart local v1       #start:I
    :cond_8
    return-void
.end method

.method public generateRandom(JJJ)V
    .locals 19
    .parameter "start"
    .parameter "end"
    .parameter "bytes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 482
    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V

    .line 484
    .local v17, r:Ljava/util/Random;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Random;->nextFloat()F

    move-result v18

    .line 485
    .local v18, fractionRx:F
    move-wide/from16 v0, p5

    long-to-float v2, v0

    mul-float v2, v2, v18

    float-to-long v7, v2

    .line 486
    .local v7, rxBytes:J
    move-wide/from16 v0, p5

    long-to-float v2, v0

    const/high16 v3, 0x3f80

    sub-float v3, v3, v18

    mul-float/2addr v2, v3

    float-to-long v11, v2

    .line 488
    .local v11, txBytes:J
    const-wide/16 v2, 0x400

    div-long v9, v7, v2

    .line 489
    .local v9, rxPackets:J
    const-wide/16 v2, 0x400

    div-long v13, v11, v2

    .line 490
    .local v13, txPackets:J
    const-wide/16 v2, 0x800

    div-long v15, v7, v2

    .local v15, operations:J
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    .line 492
    invoke-virtual/range {v2 .. v17}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJJJJJLjava/util/Random;)V

    .line 493
    return-void
.end method

.method public generateRandom(JJJJJJJLjava/util/Random;)V
    .locals 20
    .parameter "start"
    .parameter "end"
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"
    .parameter "operations"
    .parameter "r"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 503
    new-instance v5, Landroid/net/NetworkStats$Entry;

    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v5 .. v19}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 506
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    :goto_0
    const-wide/16 v11, 0x400

    cmp-long v6, p5, v11

    if-gtz v6, :cond_0

    const-wide/16 v11, 0x80

    cmp-long v6, p7, v11

    if-gtz v6, :cond_0

    const-wide/16 v11, 0x400

    cmp-long v6, p9, v11

    if-gtz v6, :cond_0

    const-wide/16 v11, 0x80

    cmp-long v6, p11, v11

    if-gtz v6, :cond_0

    const-wide/16 v11, 0x20

    cmp-long v6, p13, v11

    if-lez v6, :cond_1

    .line 507
    :cond_0
    move-object/from16 v0, p15

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v7

    .line 508
    .local v7, curStart:J
    const-wide/16 v11, 0x0

    sub-long v13, p3, v7

    const-wide/16 v15, 0x2

    div-long/2addr v13, v15

    move-object/from16 v0, p15

    invoke-static {v0, v11, v12, v13, v14}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v11

    add-long v9, v7, v11

    .line 510
    .local v9, curEnd:J
    const-wide/16 v11, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p5

    invoke-static {v0, v11, v12, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v11

    iput-wide v11, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 511
    const-wide/16 v11, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p7

    invoke-static {v0, v11, v12, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v11

    iput-wide v11, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 512
    const-wide/16 v11, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p9

    invoke-static {v0, v11, v12, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v11

    iput-wide v11, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 513
    const-wide/16 v11, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p11

    invoke-static {v0, v11, v12, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v11

    iput-wide v11, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 514
    const-wide/16 v11, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p13

    invoke-static {v0, v11, v12, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v11

    iput-wide v11, v5, Landroid/net/NetworkStats$Entry;->operations:J

    .line 516
    iget-wide v11, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long p5, p5, v11

    .line 517
    iget-wide v11, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long p7, p7, v11

    .line 518
    iget-wide v11, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long p9, p9, v11

    .line 519
    iget-wide v11, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long p11, p11, v11

    .line 520
    iget-wide v11, v5, Landroid/net/NetworkStats$Entry;->operations:J

    sub-long p13, p13, v11

    move-object/from16 v6, p0

    move-object v11, v5

    .line 522
    invoke-virtual/range {v6 .. v11}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto/16 :goto_0

    .line 524
    .end local v7           #curStart:J
    .end local v9           #curEnd:J
    :cond_1
    return-void
.end method

.method public getBucketDuration()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    return-wide v0
.end method

.method public getEnd()J
    .locals 4

    .prologue
    .line 203
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    .line 206
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getIndexAfter(J)I
    .locals 4
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v3, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 230
    .local v0, index:I
    if-gez v0, :cond_0

    .line 231
    xor-int/lit8 v0, v0, -0x1

    .line 235
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexBefore(J)I
    .locals 4
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v3, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 216
    .local v0, index:I
    if-gez v0, :cond_0

    .line 217
    xor-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 221
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1

    .line 219
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getStart()J
    .locals 2

    .prologue
    .line 195
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    .line 198
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 5
    .parameter "i"
    .parameter "recycle"

    .prologue
    const-wide/16 v3, -0x1

    .line 242
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 243
    .local v0, entry:Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 244
    iget-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 245
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v1, p1, v3, v4}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 246
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1, p1, v3, v4}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 247
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, p1, v3, v4}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 248
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, p1, v3, v4}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 249
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, p1, v3, v4}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 250
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, p1, v3, v4}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 251
    return-object v0

    .line 242
    .end local v0           #entry:Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    goto :goto_0
.end method

.method public getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 23
    .parameter "start"
    .parameter "end"
    .parameter "now"
    .parameter "recycle"

    .prologue
    .line 434
    invoke-direct/range {p0 .. p2}, Landroid/net/NetworkStatsHistory;->getUTCTime(J)J

    move-result-wide p1

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getUTCTime(J)J

    move-result-wide p3

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getUTCTime(J)J

    move-result-wide p5
    
    if-eqz p7, :cond_1

    move-object/from16 v8, p7

    .line 435
    .local v8, entry:Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    sub-long v17, p3, p1

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 436
    move-wide/from16 v0, p1

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    const-wide/16 v17, 0x0

    :goto_1
    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    const-wide/16 v17, 0x0

    :goto_2
    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    const-wide/16 v17, 0x0

    :goto_3
    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    const-wide/16 v17, 0x0

    :goto_4
    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    const-wide/16 v17, 0x0

    :goto_5
    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    const-wide/16 v17, 0x0

    :goto_6
    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 444
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v16

    .line 445
    .local v16, startIndex:I
    move/from16 v9, v16

    .local v9, i:I
    :goto_7
    if-ltz v9, :cond_0

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-object/from16 v17, v0

    aget-wide v6, v17, v9

    .line 447
    .local v6, curStart:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v17, v0

    add-long v4, v6, v17

    .line 450
    .local v4, curEnd:J
    cmp-long v17, v4, p1

    if-gtz v17, :cond_8

    .line 474
    .end local v4           #curEnd:J
    .end local v6           #curStart:J
    :cond_0
    return-object v8

    .line 434
    .end local v8           #entry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v9           #i:I
    .end local v16           #startIndex:I
    :cond_1
    new-instance v8, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v8}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    goto/16 :goto_0

    .line 437
    .restart local v8       #entry:Landroid/net/NetworkStatsHistory$Entry;
    :cond_2
    const-wide/16 v17, -0x1

    goto :goto_1

    .line 438
    :cond_3
    const-wide/16 v17, -0x1

    goto :goto_2

    .line 439
    :cond_4
    const-wide/16 v17, -0x1

    goto :goto_3

    .line 440
    :cond_5
    const-wide/16 v17, -0x1

    goto :goto_4

    .line 441
    :cond_6
    const-wide/16 v17, -0x1

    goto :goto_5

    .line 442
    :cond_7
    const-wide/16 v17, -0x1

    goto :goto_6

    .line 452
    .restart local v4       #curEnd:J
    .restart local v6       #curStart:J
    .restart local v9       #i:I
    .restart local v16       #startIndex:I
    :cond_8
    cmp-long v17, v6, p3

    if-ltz v17, :cond_a

    .line 445
    :cond_9
    :goto_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .line 455
    :cond_a
    cmp-long v17, v6, p5

    if-gez v17, :cond_10

    cmp-long v17, v4, p5

    if-lez v17, :cond_10

    const/4 v3, 0x1

    .line 457
    .local v3, activeBucket:Z
    :goto_9
    if-eqz v3, :cond_11

    .line 458
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 464
    .local v10, overlap:J
    :goto_a
    const-wide/16 v17, 0x0

    cmp-long v17, v10, v17

    if-lez v17, :cond_9

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    mul-long v19, v19, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 468
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    mul-long v19, v19, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 469
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    mul-long v19, v19, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 470
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    mul-long v19, v19, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 471
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    mul-long v19, v19, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 472
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    mul-long v19, v19, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    goto/16 :goto_8

    .line 455
    .end local v3           #activeBucket:Z
    .end local v10           #overlap:J
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 460
    .restart local v3       #activeBucket:Z
    :cond_11
    cmp-long v17, v4, p3

    if-gez v17, :cond_12

    move-wide v12, v4

    .line 461
    .local v12, overlapEnd:J
    :goto_b
    cmp-long v17, v6, p1

    if-lez v17, :cond_13

    move-wide v14, v6

    .line 462
    .local v14, overlapStart:J
    :goto_c
    sub-long v10, v12, v14

    .restart local v10       #overlap:J
    goto/16 :goto_a

    .end local v10           #overlap:J
    .end local v12           #overlapEnd:J
    .end local v14           #overlapStart:J
    :cond_12
    move-wide/from16 v12, p3

    .line 460
    goto :goto_b

    .restart local v12       #overlapEnd:J
    :cond_13
    move-wide/from16 v14, p1

    .line 461
    goto :goto_c
.end method

.method public getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "recycle"

    .prologue
    .line 426
    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    return-object v0
.end method

.method public recordData(JJJJ)V
    .locals 15
    .parameter "start"
    .parameter "end"
    .parameter "rxBytes"
    .parameter "txBytes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    new-instance v0, Landroid/net/NetworkStats$Entry;

    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-wide/from16 v5, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 262
    return-void
.end method

.method public recordData(JJLandroid/net/NetworkStats$Entry;)V
    .locals 28
    .parameter "start"
    .parameter "end"
    .parameter "entry"

    .prologue
    .line 269
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-ltz v24, :cond_0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-ltz v24, :cond_0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-ltz v24, :cond_0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-ltz v24, :cond_0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->operations:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gez v24, :cond_1

    .line 271
    :cond_0
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v25, "tried recording negative data"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 273
    :cond_1
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_3

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_3

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_3

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_3

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->operations:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_3

    .line 313
    :cond_2
    return-void

    .line 280
    :cond_3
    invoke-direct/range {p0 .. p2}, Landroid/net/NetworkStatsHistory;->getUTCTime(J)J

    move-result-wide p1

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getUTCTime(J)J

    move-result-wide p3
    
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 283
    sub-long v8, p3, p1

    .line 284
    .local v8, duration:J
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v23

    .line 285
    .local v23, startIndex:I
    move/from16 v20, v23

    .local v20, i:I
    :goto_0
    if-ltz v20, :cond_2

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-object/from16 v24, v0

    aget-wide v6, v24, v20

    .line 287
    .local v6, curStart:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v24, v0

    add-long v4, v6, v24

    .line 290
    .local v4, curEnd:J
    cmp-long v24, v4, p1

    if-ltz v24, :cond_2

    .line 292
    cmp-long v24, v6, p3

    if-lez v24, :cond_5

    .line 285
    :cond_4
    :goto_1
    add-int/lit8 v20, v20, -0x1

    goto :goto_0

    .line 294
    :cond_5
    move-wide/from16 v0, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v24

    move-wide/from16 v0, p1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    sub-long v21, v24, v26

    .line 295
    .local v21, overlap:J
    const-wide/16 v24, 0x0

    cmp-long v24, v21, v24

    if-lez v24, :cond_4

    .line 298
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    mul-long v24, v24, v21

    div-long v12, v24, v8

    .line 299
    .local v12, fracRxBytes:J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v24, v0

    mul-long v24, v24, v21

    div-long v14, v24, v8

    .line 300
    .local v14, fracRxPackets:J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v24, v0

    mul-long v24, v24, v21

    div-long v16, v24, v8

    .line 301
    .local v16, fracTxBytes:J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    mul-long v24, v24, v21

    div-long v18, v24, v8

    .line 302
    .local v18, fracTxPackets:J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->operations:J

    move-wide/from16 v24, v0

    mul-long v24, v24, v21

    div-long v10, v24, v8

    .line 304
    .local v10, fracOperations:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-static {v0, v1, v12, v13}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v12

    move-wide/from16 v0, v24

    move-object/from16 v2, p5

    iput-wide v0, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-static {v0, v1, v14, v15}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v14

    move-wide/from16 v0, v24

    move-object/from16 v2, p5

    iput-wide v0, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v16

    move-wide/from16 v0, v24

    move-object/from16 v2, p5

    iput-wide v0, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v18

    move-wide/from16 v0, v24

    move-object/from16 v2, p5

    iput-wide v0, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->operations:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v10

    move-wide/from16 v0, v24

    move-object/from16 v2, p5

    iput-wide v0, v2, Landroid/net/NetworkStats$Entry;->operations:J

    .line 311
    sub-long v8, v8, v21

    goto/16 :goto_1
.end method

.method public recordEntireHistory(Landroid/net/NetworkStatsHistory;)V
    .locals 17
    .parameter "input"

    .prologue
    .line 320
    new-instance v1, Landroid/net/NetworkStats$Entry;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 322
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_0

    .line 323
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v3, v2, v16

    .line 324
    .local v3, start:J
    move-object/from16 v0, p1

    iget-wide v7, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v5, v3, v7

    .line 326
    .local v5, end:J
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-wide/16 v7, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v7, v8}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 327
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    const-wide/16 v7, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v7, v8}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 328
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    const-wide/16 v7, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v7, v8}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 329
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    const-wide/16 v7, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v7, v8}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 330
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    const-wide/16 v7, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v7, v8}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->operations:J

    move-object/from16 v2, p0

    move-object v7, v1

    .line 332
    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 322
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 334
    .end local v3           #start:J
    .end local v5           #end:J
    :cond_0
    return-void
.end method

.method public removeBucketsBefore(J)V
    .locals 8
    .parameter "cutoff"

    .prologue
    .line 399
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v4, v6, :cond_0

    .line 400
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v6, v4

    .line 401
    .local v2, curStart:J
    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v0, v2, v6

    .line 405
    .local v0, curEnd:J
    cmp-long v6, v0, p1

    if-lez v6, :cond_8

    .line 408
    .end local v0           #curEnd:J
    .end local v2           #curStart:J
    :cond_0
    if-lez v4, :cond_7

    .line 409
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v5, v6

    .line 410
    .local v5, length:I
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 411
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 412
    :cond_1
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 413
    :cond_2
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 414
    :cond_3
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 415
    :cond_4
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 416
    :cond_5
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 417
    :cond_6
    iget v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr v6, v4

    iput v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 419
    .end local v5           #length:I
    :cond_7
    return-void

    .line 399
    .restart local v0       #curEnd:J
    .restart local v2       #curStart:J
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 555
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 556
    .local v0, writer:Ljava/io/CharArrayWriter;
    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 557
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 127
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 128
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 129
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 130
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 131
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 132
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 133
    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 171
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 172
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 173
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 174
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 175
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 176
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 177
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 178
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 179
    return-void
.end method

.method private getUTCTime(J)J
    .locals 2
    .parameter "time"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, p1, v0

    return-wide v0
.end method

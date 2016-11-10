.class final Landroid/net/wifi/RttManager$ParcelableRttResults$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/RttManager$ParcelableRttResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, -0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "num":I
    if-nez v2, :cond_0

    new-instance v3, Landroid/net/wifi/RttManager$ParcelableRttResults;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    :goto_0
    return-object v3

    :cond_0
    new-array v4, v2, [Landroid/net/wifi/RttManager$RttResult;

    .local v4, "results":[Landroid/net/wifi/RttManager$RttResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    new-instance v5, Landroid/net/wifi/RttManager$RttResult;

    invoke-direct {v5}, Landroid/net/wifi/RttManager$RttResult;-><init>()V

    aput-object v5, v4, v0

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->status:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/net/wifi/RttManager$RttResult;->ts:J

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->distance:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    aget-object v5, v4, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    aget-object v5, v4, v0

    new-instance v6, Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-direct {v6}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    iput-object v6, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    aget-object v5, v4, v0

    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    iput-byte v6, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    aget-object v5, v4, v0

    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    if-eq v5, v8, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .local v1, "length":B
    aget-object v5, v4, v0

    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    new-array v6, v1, [B

    iput-object v6, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    aget-object v5, v4, v0

    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .end local v1    # "length":B
    :cond_1
    aget-object v5, v4, v0

    new-instance v6, Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-direct {v6}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    iput-object v6, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    aget-object v5, v4, v0

    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    iput-byte v6, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    aget-object v5, v4, v0

    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    if-eq v5, v8, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .restart local v1    # "length":B
    aget-object v5, v4, v0

    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    new-array v6, v1, [B

    iput-object v6, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    aget-object v5, v4, v0

    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v5, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .end local v1    # "length":B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    new-instance v3, Landroid/net/wifi/RttManager$ParcelableRttResults;

    invoke-direct {v3, v4}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    .local v3, "parcelableResults":Landroid/net/wifi/RttManager$ParcelableRttResults;
    goto/16 :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/wifi/RttManager$ParcelableRttResults;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;

    move-result-object v0

    return-object v0
.end method

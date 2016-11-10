.class public Landroid/net/wifi/RttManager$ParcelableRttResults;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableRttResults"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RttManager$ParcelableRttResults;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mResults:[Landroid/net/wifi/RttManager$RttResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttResults$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/RttManager$RttResult;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/RttManager$RttResult;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, -0x1

    iget-object v4, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    array-length v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .local v0, "arr$":[Landroid/net/wifi/RttManager$RttResult;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .local v3, "result":Landroid/net/wifi/RttManager$RttResult;
    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->status:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->ts:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->distance:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    if-eq v4, v6, :cond_0

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    array-length v4, v4

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    if-eq v4, v6, :cond_1

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    array-length v4, v4

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v4, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v0    # "arr$":[Landroid/net/wifi/RttManager$RttResult;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "result":Landroid/net/wifi/RttManager$RttResult;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    return-void
.end method

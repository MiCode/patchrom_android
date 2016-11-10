.class final Landroid/net/wifi/RttManager$ParcelableRttParams$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttParams;
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
        "Landroid/net/wifi/RttManager$ParcelableRttParams;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "num":I
    if-nez v1, :cond_0

    new-instance v3, Landroid/net/wifi/RttManager$ParcelableRttParams;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    :goto_0
    return-object v3

    :cond_0
    new-array v2, v1, [Landroid/net/wifi/RttManager$RttParams;

    .local v2, "params":[Landroid/net/wifi/RttManager$RttParams;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    new-instance v4, Landroid/net/wifi/RttManager$RttParams;

    invoke-direct {v4}, Landroid/net/wifi/RttManager$RttParams;-><init>()V

    aput-object v4, v2, v0

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->interval:I

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    aget-object v7, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_2
    iput-boolean v4, v7, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    aget-object v7, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_3
    iput-boolean v4, v7, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    aget-object v4, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v6

    goto :goto_3

    :cond_3
    new-instance v3, Landroid/net/wifi/RttManager$ParcelableRttParams;

    invoke-direct {v3, v2}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    .local v3, "parcelableParams":Landroid/net/wifi/RttManager$ParcelableRttParams;
    goto/16 :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/wifi/RttManager$ParcelableRttParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;

    move-result-object v0

    return-object v0
.end method

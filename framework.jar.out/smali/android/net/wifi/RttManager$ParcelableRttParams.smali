.class public Landroid/net/wifi/RttManager$ParcelableRttParams;
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
    name = "ParcelableRttParams"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RttManager$ParcelableRttParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mParams:[Landroid/net/wifi/RttManager$RttParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttParams$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>([Landroid/net/wifi/RttManager$RttParams;)V
    .locals 0
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

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
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    array-length v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    .local v0, "arr$":[Landroid/net/wifi/RttManager$RttParams;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .local v3, "params":Landroid/net/wifi/RttManager$RttParams;
    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, v3, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->interval:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, v3, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    if-eqz v4, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, v3, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, v3, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_2

    .end local v0    # "arr$":[Landroid/net/wifi/RttManager$RttParams;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "params":Landroid/net/wifi/RttManager$RttParams;
    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    return-void
.end method

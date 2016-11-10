.class final Landroid/location/GpsNavigationMessage$1;
.super Ljava/lang/Object;
.source "GpsNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsNavigationMessage;
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
        "Landroid/location/GpsNavigationMessage;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessage;
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    new-instance v2, Landroid/location/GpsNavigationMessage;

    invoke-direct {v2}, Landroid/location/GpsNavigationMessage;-><init>()V

    .local v2, "navigationMessage":Landroid/location/GpsNavigationMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setType(B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setPrn(B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setMessageId(S)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setSubmessageId(S)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "dataLength":I
    new-array v0, v1, [B

    .local v0, "data":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v2, v0}, Landroid/location/GpsNavigationMessage;->setData([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "status":I
    int-to-short v4, v3

    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setStatus(S)V

    .end local v3    # "status":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/location/GpsNavigationMessage;->setStatus(S)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/GpsNavigationMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/location/GpsNavigationMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage$1;->newArray(I)[Landroid/location/GpsNavigationMessage;

    move-result-object v0

    return-object v0
.end method

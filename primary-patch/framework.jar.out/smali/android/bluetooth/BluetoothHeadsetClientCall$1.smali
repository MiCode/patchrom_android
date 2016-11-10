.class final Landroid/bluetooth/BluetoothHeadsetClientCall$1;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClientCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClientCall;
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
        "Landroid/bluetooth/BluetoothHeadsetClientCall;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v6, :cond_0

    move v5, v6

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v6, :cond_1

    :goto_1
    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZ)V

    return-object v0

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/bluetooth/BluetoothHeadsetClientCall;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;->newArray(I)[Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    return-object v0
.end method

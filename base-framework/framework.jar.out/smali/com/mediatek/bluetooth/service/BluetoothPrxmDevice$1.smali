.class final Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice$1;
.super Ljava/lang/Object;
.source "BluetoothPrxmDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
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
        "Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    .locals 2
    .parameter "in"

    .prologue
    new-instance v0, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .local v0, pdi:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    #setter for: Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->capability:B
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->access$002(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;B)B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    #setter for: Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->linkLossLevel:B
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->access$102(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;B)B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    #setter for: Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->pathLossLevel:B
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->access$202(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;B)B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    #setter for: Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->pathLossThreshold:B
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->access$302(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;B)B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    #setter for: Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->remoteTxPower:B
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->access$402(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;B)B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    #setter for: Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->currentRssi:B
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->access$502(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;B)B

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice$1;->newArray(I)[Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    move-result-object v0

    return-object v0
.end method

.class public abstract Landroid/bluetooth/BluetoothGattServerCallback;
.super Ljava/lang/Object;
.source "BluetoothGattServerCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .parameter "device"
    .parameter "requestId"
    .parameter "offset"
    .parameter "characteristic"

    .prologue
    return-void
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 0
    .parameter "device"
    .parameter "requestId"
    .parameter "characteristic"
    .parameter "preparedWrite"
    .parameter "responseNeeded"
    .parameter "offset"
    .parameter "value"

    .prologue
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "device"
    .parameter "status"
    .parameter "newState"

    .prologue
    return-void
.end method

.method public onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0
    .parameter "device"
    .parameter "requestId"
    .parameter "offset"
    .parameter "descriptor"

    .prologue
    return-void
.end method

.method public onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 0
    .parameter "device"
    .parameter "requestId"
    .parameter "descriptor"
    .parameter "preparedWrite"
    .parameter "responseNeeded"
    .parameter "offset"
    .parameter "value"

    .prologue
    return-void
.end method

.method public onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 0
    .parameter "device"
    .parameter "requestId"
    .parameter "execute"

    .prologue
    return-void
.end method

.method public onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .parameter "status"
    .parameter "service"

    .prologue
    return-void
.end method

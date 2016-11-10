.class public abstract Landroid/bluetooth/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field static final TRANSACTION_addCharacteristic:I = 0x1d

.field static final TRANSACTION_addDescriptor:I = 0x1e

.field static final TRANSACTION_addIncludedService:I = 0x1c

.field static final TRANSACTION_beginReliableWrite:I = 0x12

.field static final TRANSACTION_beginServiceDeclaration:I = 0x1b

.field static final TRANSACTION_clearServices:I = 0x21

.field static final TRANSACTION_clientConnect:I = 0x9

.field static final TRANSACTION_clientDisconnect:I = 0xa

.field static final TRANSACTION_configureMTU:I = 0x15

.field static final TRANSACTION_connectionParameterUpdate:I = 0x16

.field static final TRANSACTION_disconnectAll:I = 0x24

.field static final TRANSACTION_discoverServices:I = 0xc

.field static final TRANSACTION_endReliableWrite:I = 0x13

.field static final TRANSACTION_endServiceDeclaration:I = 0x1f

.field static final TRANSACTION_flushPendingBatchResults:I = 0x4

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x1

.field static final TRANSACTION_numHwTrackFiltersAvailable:I = 0x26

.field static final TRANSACTION_readCharacteristic:I = 0xd

.field static final TRANSACTION_readDescriptor:I = 0xf

.field static final TRANSACTION_readRemoteRssi:I = 0x14

.field static final TRANSACTION_refreshDevice:I = 0xb

.field static final TRANSACTION_registerClient:I = 0x7

.field static final TRANSACTION_registerForNotification:I = 0x11

.field static final TRANSACTION_registerServer:I = 0x17

.field static final TRANSACTION_removeService:I = 0x20

.field static final TRANSACTION_sendNotification:I = 0x23

.field static final TRANSACTION_sendResponse:I = 0x22

.field static final TRANSACTION_serverConnect:I = 0x19

.field static final TRANSACTION_serverDisconnect:I = 0x1a

.field static final TRANSACTION_startMultiAdvertising:I = 0x5

.field static final TRANSACTION_startScan:I = 0x2

.field static final TRANSACTION_stopMultiAdvertising:I = 0x6

.field static final TRANSACTION_stopScan:I = 0x3

.field static final TRANSACTION_unregAll:I = 0x25

.field static final TRANSACTION_unregisterClient:I = 0x8

.field static final TRANSACTION_unregisterServer:I = 0x18

.field static final TRANSACTION_writeCharacteristic:I = 0xe

.field static final TRANSACTION_writeDescriptor:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.bluetooth.IBluetoothGatt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothGatt;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .local v3, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v23

    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v2, 0x1

    goto :goto_0

    .end local v3    # "_arg0":[I
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .local v4, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/le/ScanSettings;

    .local v5, "_arg2":Landroid/bluetooth/le/ScanSettings;
    :goto_2
    sget-object v2, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .local v6, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v24

    .local v24, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v7

    .local v7, "_arg4":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg5":Ljava/lang/String;
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto :goto_0

    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Landroid/bluetooth/le/ScanSettings;
    .end local v6    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v7    # "_arg4":Ljava/util/List;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v24    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .restart local v4    # "_arg1":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/bluetooth/le/ScanSettings;
    goto :goto_2

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Landroid/bluetooth/le/ScanSettings;
    :sswitch_3
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    .restart local v4    # "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScan(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .end local v3    # "_arg0":I
    :sswitch_4
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    .restart local v4    # "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->flushPendingBatchResults(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .end local v3    # "_arg0":I
    :sswitch_5
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/le/AdvertiseData;

    .local v4, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/le/AdvertiseData;

    .local v5, "_arg2":Landroid/bluetooth/le/AdvertiseData;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/le/AdvertiseSettings;

    .local v13, "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v5    # "_arg2":Landroid/bluetooth/le/AdvertiseData;
    .end local v13    # "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/bluetooth/le/AdvertiseData;
    goto :goto_6

    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    goto :goto_7

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v5    # "_arg2":Landroid/bluetooth/le/AdvertiseData;
    .end local v13    # "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    :sswitch_6
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopMultiAdvertising(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_7
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .local v3, "_arg0":Landroid/os/ParcelUuid;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v4

    .local v4, "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_8

    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_8
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterClient(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_9
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v5, 0x1

    .local v5, "_arg2":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientConnect(ILjava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg2":Z
    .end local v13    # "_arg3":I
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_a
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientDisconnect(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->refreshDevice(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_c
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServices(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .local v7, "_arg4":Landroid/os/ParcelUuid;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelUuid;

    .local v16, "_arg6":Landroid/os/ParcelUuid;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg7":I
    move-object/from16 v9, p0

    move v10, v3

    move-object v11, v4

    move v12, v5

    move-object v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v17}, Landroid/bluetooth/IBluetoothGatt$Stub;->readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v16    # "_arg6":Landroid/os/ParcelUuid;
    .end local v17    # "_arg7":I
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_a

    .restart local v8    # "_arg5":I
    :cond_a
    const/16 v16, 0x0

    .restart local v16    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_b

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v13    # "_arg3":I
    .end local v16    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_e
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelUuid;

    .restart local v16    # "_arg6":Landroid/os/ParcelUuid;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .local v19, "_arg9":[B
    move-object/from16 v9, p0

    move v10, v3

    move-object v11, v4

    move v12, v5

    move-object v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v19}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v16    # "_arg6":Landroid/os/ParcelUuid;
    .end local v17    # "_arg7":I
    .end local v18    # "_arg8":I
    .end local v19    # "_arg9":[B
    :cond_b
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_c

    .restart local v8    # "_arg5":I
    :cond_c
    const/16 v16, 0x0

    .restart local v16    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_d

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v13    # "_arg3":I
    .end local v16    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_f
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelUuid;

    .restart local v16    # "_arg6":Landroid/os/ParcelUuid;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/ParcelUuid;

    .local v18, "_arg8":Landroid/os/ParcelUuid;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg9":I
    move-object/from16 v9, p0

    move v10, v3

    move-object v11, v4

    move v12, v5

    move-object v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v19}, Landroid/bluetooth/IBluetoothGatt$Stub;->readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v16    # "_arg6":Landroid/os/ParcelUuid;
    .end local v17    # "_arg7":I
    .end local v18    # "_arg8":Landroid/os/ParcelUuid;
    .end local v19    # "_arg9":I
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_e

    .restart local v8    # "_arg5":I
    :cond_e
    const/16 v16, 0x0

    .restart local v16    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_f

    .restart local v17    # "_arg7":I
    :cond_f
    const/16 v18, 0x0

    .restart local v18    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_10

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v13    # "_arg3":I
    .end local v16    # "_arg6":Landroid/os/ParcelUuid;
    .end local v17    # "_arg7":I
    .end local v18    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_10
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelUuid;

    .restart local v16    # "_arg6":Landroid/os/ParcelUuid;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/ParcelUuid;

    .restart local v18    # "_arg8":Landroid/os/ParcelUuid;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .local v21, "_arg11":[B
    move-object/from16 v9, p0

    move v10, v3

    move-object v11, v4

    move v12, v5

    move-object v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v21}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v16    # "_arg6":Landroid/os/ParcelUuid;
    .end local v17    # "_arg7":I
    .end local v18    # "_arg8":Landroid/os/ParcelUuid;
    .end local v19    # "_arg9":I
    .end local v20    # "_arg10":I
    .end local v21    # "_arg11":[B
    :cond_10
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_11

    .restart local v8    # "_arg5":I
    :cond_11
    const/16 v16, 0x0

    .restart local v16    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_12

    .restart local v17    # "_arg7":I
    :cond_12
    const/16 v18, 0x0

    .restart local v18    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_13

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v13    # "_arg3":I
    .end local v16    # "_arg6":Landroid/os/ParcelUuid;
    .end local v17    # "_arg7":I
    .end local v18    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_11
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelUuid;

    .restart local v16    # "_arg6":Landroid/os/ParcelUuid;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    const/16 v17, 0x1

    .local v17, "_arg7":Z
    :goto_16
    move-object/from16 v9, p0

    move v10, v3

    move-object v11, v4

    move v12, v5

    move-object v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v17}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v16    # "_arg6":Landroid/os/ParcelUuid;
    .end local v17    # "_arg7":Z
    :cond_13
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_14

    .restart local v8    # "_arg5":I
    :cond_14
    const/16 v16, 0x0

    .restart local v16    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_15

    :cond_15
    const/16 v17, 0x0

    goto :goto_16

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v13    # "_arg3":I
    .end local v16    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_12
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginReliableWrite(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_13
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v5, 0x1

    .local v5, "_arg2":Z
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->endReliableWrite(ILjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg2":Z
    :cond_16
    const/4 v5, 0x0

    goto :goto_17

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_14
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->readRemoteRssi(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_15
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->configureMTU(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_16
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->connectionParameterUpdate(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_17
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .local v3, "_arg0":Landroid/os/ParcelUuid;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v4

    .local v4, "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    :cond_17
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_18

    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_18
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterServer(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_19
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v5, 0x1

    .local v5, "_arg2":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverConnect(ILjava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg2":Z
    .end local v13    # "_arg3":I
    :cond_18
    const/4 v5, 0x0

    goto :goto_19

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1a
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverDisconnect(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v8, 0x1

    .local v8, "_arg5":Z
    :goto_1b
    move-object/from16 v9, p0

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":Z
    :cond_19
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_1a

    :cond_1a
    const/4 v8, 0x0

    goto :goto_1b

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v13    # "_arg3":I
    :sswitch_1c
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelUuid;

    .local v13, "_arg3":Landroid/os/ParcelUuid;
    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->addIncludedService(IIILandroid/os/ParcelUuid;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v13    # "_arg3":Landroid/os/ParcelUuid;
    :cond_1b
    const/4 v13, 0x0

    .restart local v13    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_1c

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v13    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_1d
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .local v4, "_arg1":Landroid/os/ParcelUuid;
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->addCharacteristic(ILandroid/os/ParcelUuid;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Landroid/os/ParcelUuid;
    .end local v5    # "_arg2":I
    .end local v13    # "_arg3":I
    :cond_1c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_1d

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_1e
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .restart local v4    # "_arg1":Landroid/os/ParcelUuid;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->addDescriptor(ILandroid/os/ParcelUuid;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg1":Landroid/os/ParcelUuid;
    .end local v5    # "_arg2":I
    :cond_1d
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_1e

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_1f
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->endServiceDeclaration(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_20
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelUuid;

    .local v13, "_arg3":Landroid/os/ParcelUuid;
    :goto_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeService(IIILandroid/os/ParcelUuid;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v13    # "_arg3":Landroid/os/ParcelUuid;
    :cond_1e
    const/4 v13, 0x0

    .restart local v13    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_1f

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v13    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_21
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->clearServices(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    :sswitch_22
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .local v8, "_arg5":[B
    move-object/from16 v9, p0

    move v10, v3

    move-object v11, v4

    move v12, v5

    move v14, v7

    move-object v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendResponse(ILjava/lang/String;III[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":[B
    .end local v13    # "_arg3":I
    :sswitch_23
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .local v7, "_arg4":Landroid/os/ParcelUuid;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelUuid;

    .restart local v16    # "_arg6":Landroid/os/ParcelUuid;
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    const/16 v17, 0x1

    .restart local v17    # "_arg7":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .local v18, "_arg8":[B
    move-object/from16 v9, p0

    move v10, v3

    move-object v11, v4

    move v12, v5

    move-object v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v18}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v16    # "_arg6":Landroid/os/ParcelUuid;
    .end local v17    # "_arg7":Z
    .end local v18    # "_arg8":[B
    :cond_1f
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_20

    .restart local v8    # "_arg5":I
    :cond_20
    const/16 v16, 0x0

    .restart local v16    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_21

    :cond_21
    const/16 v17, 0x0

    goto :goto_22

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v13    # "_arg3":I
    .end local v16    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_24
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->disconnectAll()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_25
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregAll()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_26
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->numHwTrackFiltersAvailable()I

    move-result v22

    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

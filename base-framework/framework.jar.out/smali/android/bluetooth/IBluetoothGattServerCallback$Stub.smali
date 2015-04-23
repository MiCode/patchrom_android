.class public abstract Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattServerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattServerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattServerCallback"

.field static final TRANSACTION_onCharacteristicReadRequest:I = 0x5

.field static final TRANSACTION_onCharacteristicWriteRequest:I = 0x7

.field static final TRANSACTION_onDescriptorReadRequest:I = 0x6

.field static final TRANSACTION_onDescriptorWriteRequest:I = 0x8

.field static final TRANSACTION_onExecuteWrite:I = 0x9

.field static final TRANSACTION_onMtuChanged:I = 0xb

.field static final TRANSACTION_onNotificationSent:I = 0xa

.field static final TRANSACTION_onScanResult:I = 0x2

.field static final TRANSACTION_onServerConnectionState:I = 0x3

.field static final TRANSACTION_onServerRegistered:I = 0x1

.field static final TRANSACTION_onServiceAdded:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerRegistered(II)V

    const/4 v1, 0x1

    goto :goto_0

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_2
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .local v4, "_arg2":[B
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onScanResult(Ljava/lang/String;I[B)V

    const/4 v1, 0x1

    goto :goto_0

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :sswitch_3
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    .local v4, "_arg2":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerConnectionState(IIZLjava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .local v5, "_arg3":Landroid/os/ParcelUuid;
    :goto_2
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    const/4 v1, 0x1

    goto :goto_0

    .end local v5    # "_arg3":Landroid/os/ParcelUuid;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_2

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_5
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    .local v5, "_arg3":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .local v8, "_arg6":Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .local v10, "_arg8":Landroid/os/ParcelUuid;
    :goto_5
    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":Landroid/os/ParcelUuid;
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .restart local v5    # "_arg3":Z
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_4

    .restart local v9    # "_arg7":I
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_5

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":Landroid/os/ParcelUuid;
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_6
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v5, 0x1

    .restart local v5    # "_arg3":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .restart local v8    # "_arg6":Landroid/os/ParcelUuid;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    .local v11, "_arg9":Landroid/os/ParcelUuid;
    :goto_9
    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":Landroid/os/ParcelUuid;
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    .end local v11    # "_arg9":Landroid/os/ParcelUuid;
    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    .restart local v5    # "_arg3":Z
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":I
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_7

    .restart local v9    # "_arg7":I
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "_arg9":Landroid/os/ParcelUuid;
    goto :goto_9

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":Landroid/os/ParcelUuid;
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    .end local v11    # "_arg9":Landroid/os/ParcelUuid;
    :sswitch_7
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v6, 0x1

    .local v6, "_arg4":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v7, 0x1

    .local v7, "_arg5":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .local v12, "_arg10":Landroid/os/ParcelUuid;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .local v13, "_arg11":[B
    move-object v1, p0

    invoke-virtual/range {v1 .. v13}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg4":Z
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    .end local v11    # "_arg9":I
    .end local v12    # "_arg10":Landroid/os/ParcelUuid;
    .end local v13    # "_arg11":[B
    :cond_9
    const/4 v6, 0x0

    goto :goto_a

    .restart local v6    # "_arg4":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_b

    .restart local v7    # "_arg5":Z
    .restart local v8    # "_arg6":I
    .restart local v9    # "_arg7":I
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_c

    .restart local v11    # "_arg9":I
    :cond_c
    const/4 v12, 0x0

    .restart local v12    # "_arg10":Landroid/os/ParcelUuid;
    goto :goto_d

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Z
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    .end local v11    # "_arg9":I
    .end local v12    # "_arg10":Landroid/os/ParcelUuid;
    :sswitch_8
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v6, 0x1

    .restart local v6    # "_arg4":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v7, 0x1

    .restart local v7    # "_arg5":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .restart local v12    # "_arg10":Landroid/os/ParcelUuid;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelUuid;

    .local v13, "_arg11":Landroid/os/ParcelUuid;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .local v14, "_arg12":[B
    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v6    # "_arg4":Z
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    .end local v11    # "_arg9":I
    .end local v12    # "_arg10":Landroid/os/ParcelUuid;
    .end local v13    # "_arg11":Landroid/os/ParcelUuid;
    .end local v14    # "_arg12":[B
    :cond_d
    const/4 v6, 0x0

    goto :goto_e

    .restart local v6    # "_arg4":Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_f

    .restart local v7    # "_arg5":Z
    .restart local v8    # "_arg6":I
    .restart local v9    # "_arg7":I
    :cond_f
    const/4 v10, 0x0

    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_10

    .restart local v11    # "_arg9":I
    :cond_10
    const/4 v12, 0x0

    .restart local v12    # "_arg10":Landroid/os/ParcelUuid;
    goto :goto_11

    :cond_11
    const/4 v13, 0x0

    .restart local v13    # "_arg11":Landroid/os/ParcelUuid;
    goto :goto_12

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Z
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    .end local v11    # "_arg9":I
    .end local v12    # "_arg10":Landroid/os/ParcelUuid;
    .end local v13    # "_arg11":Landroid/os/ParcelUuid;
    :sswitch_9
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v4, 0x1

    .local v4, "_arg2":Z
    :goto_13
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onExecuteWrite(Ljava/lang/String;IZ)V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v4    # "_arg2":Z
    :cond_12
    const/4 v4, 0x0

    goto :goto_13

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_a
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onNotificationSent(Ljava/lang/String;I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_b
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onMtuChanged(Ljava/lang/String;I)V

    const/4 v1, 0x1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

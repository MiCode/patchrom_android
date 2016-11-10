.class public abstract Landroid/media/midi/IMidiManager$Stub;
.super Landroid/os/Binder;
.source "IMidiManager.java"

# interfaces
.implements Landroid/media/midi/IMidiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.midi.IMidiManager"

.field static final TRANSACTION_closeDevice:I = 0x6

.field static final TRANSACTION_getDeviceStatus:I = 0xa

.field static final TRANSACTION_getDevices:I = 0x1

.field static final TRANSACTION_getServiceDeviceInfo:I = 0x9

.field static final TRANSACTION_openBluetoothDevice:I = 0x5

.field static final TRANSACTION_openDevice:I = 0x4

.field static final TRANSACTION_registerDeviceServer:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x2

.field static final TRANSACTION_setDeviceStatus:I = 0xb

.field static final TRANSACTION_unregisterDeviceServer:I = 0x8

.field static final TRANSACTION_unregisterListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/midi/IMidiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.media.midi.IMidiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/midi/IMidiManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/midi/IMidiManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/midi/IMidiManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/midi/IMidiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    goto :goto_0

    :sswitch_1
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/midi/IMidiManager$Stub;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v8

    .local v8, "_result":[Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v9

    goto :goto_0

    .end local v8    # "_result":[Landroid/media/midi/MidiDeviceInfo;
    :sswitch_2
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;

    move-result-object v2

    .local v2, "_arg1":Landroid/media/midi/IMidiDeviceListener;
    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiManager$Stub;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto :goto_0

    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    :sswitch_3
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;

    move-result-object v2

    .restart local v2    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiManager$Stub;->unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto :goto_0

    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    :sswitch_4
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/MidiDeviceInfo;

    .local v2, "_arg1":Landroid/media/midi/MidiDeviceInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceOpenCallback;

    move-result-object v3

    .local v3, "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/midi/IMidiManager$Stub;->openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto :goto_0

    .end local v2    # "_arg1":Landroid/media/midi/MidiDeviceInfo;
    .end local v3    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_1

    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_5
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .local v2, "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceOpenCallback;

    move-result-object v3

    .restart local v3    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/midi/IMidiManager$Stub;->openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_0

    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiManager$Stub;->closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_7
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v1

    .local v1, "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .local v6, "_arg5":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/media/midi/IMidiManager$Stub;->registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v8

    .local v8, "_result":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_3

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, p3, v9}, Landroid/media/midi/MidiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v9

    goto/16 :goto_0

    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":I
    .end local v8    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/os/Bundle;
    goto :goto_3

    .restart local v7    # "_arg6":I
    .restart local v8    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :cond_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v1    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":[Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":I
    .end local v8    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_8
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v1

    .restart local v1    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual {p0, v1}, Landroid/media/midi/IMidiManager$Stub;->unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    :sswitch_9
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiManager$Stub;->getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v8

    .restart local v8    # "_result":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_4

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, p3, v9}, Landroid/media/midi/MidiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    move v0, v9

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_a
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiDeviceInfo;

    .local v1, "_arg0":Landroid/media/midi/MidiDeviceInfo;
    :goto_6
    invoke-virtual {p0, v1}, Landroid/media/midi/IMidiManager$Stub;->getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;

    move-result-object v8

    .local v8, "_result":Landroid/media/midi/MidiDeviceStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_6

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, p3, v9}, Landroid/media/midi/MidiDeviceStatus;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    move v0, v9

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    .end local v8    # "_result":Landroid/media/midi/MidiDeviceStatus;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_6

    .restart local v8    # "_result":Landroid/media/midi/MidiDeviceStatus;
    :cond_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .end local v1    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    .end local v8    # "_result":Landroid/media/midi/MidiDeviceStatus;
    :sswitch_b
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v1

    .local v1, "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/media/midi/MidiDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/MidiDeviceStatus;

    .local v2, "_arg1":Landroid/media/midi/MidiDeviceStatus;
    :goto_8
    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiManager$Stub;->setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    goto/16 :goto_0

    .end local v2    # "_arg1":Landroid/media/midi/MidiDeviceStatus;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/media/midi/MidiDeviceStatus;
    goto :goto_8

    nop

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

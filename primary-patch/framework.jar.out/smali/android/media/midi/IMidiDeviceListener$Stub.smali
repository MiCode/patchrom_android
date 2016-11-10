.class public abstract Landroid/media/midi/IMidiDeviceListener$Stub;
.super Landroid/os/Binder;
.source "IMidiDeviceListener.java"

# interfaces
.implements Landroid/media/midi/IMidiDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiDeviceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiDeviceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.midi.IMidiDeviceListener"

.field static final TRANSACTION_onDeviceAdded:I = 0x1

.field static final TRANSACTION_onDeviceRemoved:I = 0x2

.field static final TRANSACTION_onDeviceStatusChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.midi.IMidiDeviceListener"

    invoke-virtual {p0, p0, v0}, Landroid/media/midi/IMidiDeviceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.media.midi.IMidiDeviceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/midi/IMidiDeviceListener;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/midi/IMidiDeviceListener;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/midi/IMidiDeviceListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/midi/IMidiDeviceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v2, "android.media.midi.IMidiDeviceListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "android.media.midi.IMidiDeviceListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiDeviceInfo;

    .local v0, "_arg0":Landroid/media/midi/MidiDeviceInfo;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/media/midi/IMidiDeviceListener$Stub;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_1

    .end local v0    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_2
    const-string v2, "android.media.midi.IMidiDeviceListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiDeviceInfo;

    .restart local v0    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/media/midi/IMidiDeviceListener$Stub;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_2

    .end local v0    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_3
    const-string v2, "android.media.midi.IMidiDeviceListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/media/midi/MidiDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiDeviceStatus;

    .local v0, "_arg0":Landroid/media/midi/MidiDeviceStatus;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/media/midi/IMidiDeviceListener$Stub;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/media/midi/MidiDeviceStatus;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/midi/MidiDeviceStatus;
    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

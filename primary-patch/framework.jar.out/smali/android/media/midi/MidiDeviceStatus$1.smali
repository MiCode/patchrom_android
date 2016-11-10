.class final Landroid/media/midi/MidiDeviceStatus$1;
.super Ljava/lang/Object;
.source "MidiDeviceStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceStatus;
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
        "Landroid/media/midi/MidiDeviceStatus;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/midi/MidiDeviceStatus;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-class v4, Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiDeviceInfo;

    .local v1, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    .local v2, "inputPortOpen":[Z
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .local v3, "outputPortOpenCount":[I
    new-instance v4, Landroid/media/midi/MidiDeviceStatus;

    invoke-direct {v4, v1, v2, v3}, Landroid/media/midi/MidiDeviceStatus;-><init>(Landroid/media/midi/MidiDeviceInfo;[Z[I)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiDeviceStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/midi/MidiDeviceStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/midi/MidiDeviceStatus;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/media/midi/MidiDeviceStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiDeviceStatus$1;->newArray(I)[Landroid/media/midi/MidiDeviceStatus;

    move-result-object v0

    return-object v0
.end method

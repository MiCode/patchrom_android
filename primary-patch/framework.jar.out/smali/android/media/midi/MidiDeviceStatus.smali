.class public final Landroid/media/midi/MidiDeviceStatus;
.super Ljava/lang/Object;
.source "MidiDeviceStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/midi/MidiDeviceStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MidiDeviceStatus"


# instance fields
.field private final mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final mInputPortOpen:[Z

.field private final mOutputPortOpenCount:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/media/midi/MidiDeviceStatus$1;

    invoke-direct {v0}, Landroid/media/midi/MidiDeviceStatus$1;-><init>()V

    sput-object v0, Landroid/media/midi/MidiDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 1
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    return-void
.end method

.method public constructor <init>(Landroid/media/midi/MidiDeviceInfo;[Z[I)V
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p2, "inputPortOpen"    # [Z
    .param p3, "outputPortOpenCount"    # [I

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public getOutputPortOpenCount(I)I
    .locals 1
    .param p1, "portNumber"    # I

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    aget v0, v0, p1

    return v0
.end method

.method public isInputPortOpen(I)Z
    .locals 1
    .param p1, "portNumber"    # I

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v4, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v2

    .local v2, "inputPortCount":I
    iget-object v4, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v3

    .local v3, "outputPortCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "mInputPortOpen=["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v4, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "] mOutputPortOpenCount=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v4, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    aget v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_2

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method

.class public final Landroid/media/midi/MidiDeviceInfo;
.super Ljava/lang/Object;
.source "MidiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDeviceInfo$PortInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/midi/MidiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_ALSA_CARD:Ljava/lang/String; = "alsa_card"

.field public static final PROPERTY_ALSA_DEVICE:Ljava/lang/String; = "alsa_device"

.field public static final PROPERTY_BLUETOOTH_DEVICE:Ljava/lang/String; = "bluetooth_device"

.field public static final PROPERTY_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field public static final PROPERTY_NAME:Ljava/lang/String; = "name"

.field public static final PROPERTY_PRODUCT:Ljava/lang/String; = "product"

.field public static final PROPERTY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final PROPERTY_SERVICE_INFO:Ljava/lang/String; = "service_info"

.field public static final PROPERTY_USB_DEVICE:Ljava/lang/String; = "usb_device"

.field public static final PROPERTY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "MidiDeviceInfo"

.field public static final TYPE_BLUETOOTH:I = 0x3

.field public static final TYPE_USB:I = 0x1

.field public static final TYPE_VIRTUAL:I = 0x2


# instance fields
.field private final mId:I

.field private final mInputPortCount:I

.field private final mInputPortNames:[Ljava/lang/String;

.field private final mIsPrivate:Z

.field private final mOutputPortCount:I

.field private final mOutputPortNames:[Ljava/lang/String;

.field private final mProperties:Landroid/os/Bundle;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/media/midi/MidiDeviceInfo$1;

    invoke-direct {v0}, Landroid/media/midi/MidiDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "id"    # I
    .param p3, "numInputPorts"    # I
    .param p4, "numOutputPorts"    # I
    .param p5, "inputPortNames"    # [Ljava/lang/String;
    .param p6, "outputPortNames"    # [Ljava/lang/String;
    .param p7, "properties"    # Landroid/os/Bundle;
    .param p8, "isPrivate"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    iput p2, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    iput p3, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    iput p4, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    if-nez p5, :cond_0

    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    :goto_0
    if-nez p6, :cond_1

    new-array v0, p4, [Ljava/lang/String;

    iput-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    :goto_1
    iput-object p7, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    iput-boolean p8, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    return-void

    :cond_0
    iput-object p5, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p6, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Landroid/media/midi/MidiDeviceInfo;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/media/midi/MidiDeviceInfo;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Landroid/media/midi/MidiDeviceInfo;->mId:I

    iget v2, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    return v0
.end method

.method public getInputPortCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    return v0
.end method

.method public getOutputPortCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    return v0
.end method

.method public getPorts()[Landroid/media/midi/MidiDeviceInfo$PortInfo;
    .locals 7

    .prologue
    iget v4, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    iget v5, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    add-int/2addr v4, v5

    new-array v3, v4, [Landroid/media/midi/MidiDeviceInfo$PortInfo;

    .local v3, "ports":[Landroid/media/midi/MidiDeviceInfo$PortInfo;
    const/4 v1, 0x0

    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    if-ge v0, v4, :cond_0

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    new-instance v4, Landroid/media/midi/MidiDeviceInfo$PortInfo;

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {v4, v5, v0, v6}, Landroid/media/midi/MidiDeviceInfo$PortInfo;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    if-ge v0, v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    new-instance v4, Landroid/media/midi/MidiDeviceInfo$PortInfo;

    const/4 v5, 0x2

    iget-object v6, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {v4, v5, v0, v6}, Landroid/media/midi/MidiDeviceInfo$PortInfo;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getProperties()Landroid/os/Bundle;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MidiDeviceInfo[mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mInputPortCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOutputPortCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mIsPrivate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

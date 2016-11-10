.class final Landroid/hardware/hdmi/HdmiDeviceInfo$1;
.super Ljava/lang/Object;
.source "HdmiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiDeviceInfo;
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
        "Landroid/hardware/hdmi/HdmiDeviceInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 11
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "hdmiDeviceType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "physicalAddress":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "portId":I
    sparse-switch v10, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "logicalAddress":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "deviceType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "vendorId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "powerStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "displayName":Ljava/lang/String;
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-direct/range {v0 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    goto :goto_0

    .end local v1    # "logicalAddress":I
    .end local v4    # "deviceType":I
    .end local v5    # "vendorId":I
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v7    # "powerStatus":I
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "deviceId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "adopterId":I
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-direct {v0, v2, v3, v8, v9}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIII)V

    goto :goto_0

    .end local v8    # "adopterId":I
    .end local v9    # "deviceId":I
    :sswitch_2
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-direct {v0, v2, v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;->newArray(I)[Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

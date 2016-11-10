.class public Landroid/bluetooth/SdpOppOpsRecord;
.super Ljava/lang/Object;
.source "SdpOppOpsRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mFormatsList:[B

.field private final mL2capPsm:I

.field private final mProfileVersion:I

.field private final mRfcommChannel:I

.field private final mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/bluetooth/SdpOppOpsRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpOppOpsRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpOppOpsRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mRfcommChannel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mL2capPsm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mProfileVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "arrayLength":I
    if-lez v0, :cond_0

    new-array v1, v0, [B

    .local v1, "bytes":[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    iput-object v1, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    .end local v1    # "bytes":[B
    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;III[B)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "rfcommChannel"    # I
    .param p3, "l2capPsm"    # I
    .param p4, "version"    # I
    .param p5, "formatsList"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/SdpOppOpsRecord;->mServiceName:Ljava/lang/String;

    iput p2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mRfcommChannel:I

    iput p3, p0, Landroid/bluetooth/SdpOppOpsRecord;->mL2capPsm:I

    iput p4, p0, Landroid/bluetooth/SdpOppOpsRecord;->mProfileVersion:I

    iput-object p5, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getFormatsList()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    return-object v0
.end method

.method public getL2capPsm()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mL2capPsm:I

    return v0
.end method

.method public getProfileVersion()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mProfileVersion:I

    return v0
.end method

.method public getRfcommChannel()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mRfcommChannel:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bluetooth OPP Server SDP Record:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "  RFCOMM Chan Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mRfcommChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  L2CAP PSM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mL2capPsm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  Profile version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mProfileVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  Service Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  Formats List: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mRfcommChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mL2capPsm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mProfileVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/SdpOppOpsRecord;->mFormatsList:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.class public Landroid/nfc/wps/PasswordToken;
.super Ljava/lang/Object;
.source "PasswordToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field static final TAG:Ljava/lang/String; = "PasswordToken"

.field public static mPASSWORDTOKEN_ATTRIBUTE_ID_OOB_DEVICE_PASSWORD:[B

.field public static mPASSWORDTOKEN_ATTRIBUTE_ID_VENDOR_EXTENSION:[B

.field public static mPASSWORDTOKEN_ATTRIBUTE_ID_VERSION:[B

.field public static mPASSWORDTOKEN_VERSION_10:B

.field public static mPASSWORDTOKEN_VERSION_20:B


# instance fields
.field private mDevicePwd:[B

.field private mPublicKeyHash:[B

.field private mPwdId:I

.field private mVendorEx:[B

.field private mVendorId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/nfc/wps/PasswordToken;->mPASSWORDTOKEN_ATTRIBUTE_ID_VERSION:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/nfc/wps/PasswordToken;->mPASSWORDTOKEN_ATTRIBUTE_ID_OOB_DEVICE_PASSWORD:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/wps/PasswordToken;->mPASSWORDTOKEN_ATTRIBUTE_ID_VENDOR_EXTENSION:[B

    const/16 v0, 0x10

    sput-byte v0, Landroid/nfc/wps/PasswordToken;->mPASSWORDTOKEN_VERSION_10:B

    const/16 v0, 0x20

    sput-byte v0, Landroid/nfc/wps/PasswordToken;->mPASSWORDTOKEN_VERSION_20:B

    new-instance v0, Landroid/nfc/wps/PasswordToken$1;

    invoke-direct {v0}, Landroid/nfc/wps/PasswordToken$1;-><init>()V

    sput-object v0, Landroid/nfc/wps/PasswordToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 0x1
        0x10t
        0x4at
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x10t
        0x2ct
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x10t
        0x49t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/PasswordToken;->mVendorId:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/PasswordToken;->mVendorId:[B

    const-string v0, "PasswordToken"

    const-string v1, "assemble function is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nfc/wps/PasswordToken;->mPwdId:I

    const-string v0, "PasswordToken"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPwdId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nfc/wps/PasswordToken;->mPwdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/PasswordToken;->mPublicKeyHash:[B

    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mPublicKeyHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/PasswordToken;->mDevicePwd:[B

    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mDevicePwd:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/PasswordToken;->mVendorId:[B

    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mVendorId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/PasswordToken;->mVendorEx:[B

    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mVendorEx:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getDevPwd()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mDevicePwd:[B

    return-object v0
.end method

.method public getPublicKeyHash()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mPublicKeyHash:[B

    return-object v0
.end method

.method public getPwdId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/nfc/wps/PasswordToken;->mPwdId:I

    return v0
.end method

.method public getVendorEx()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mVendorEx:[B

    return-object v0
.end method

.method public setDevPwd([B)V
    .locals 0
    .parameter "devPwd"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/PasswordToken;->mDevicePwd:[B

    return-void
.end method

.method public setPublicKeyHash([B)V
    .locals 0
    .parameter "pubKeyHash"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/PasswordToken;->mPublicKeyHash:[B

    return-void
.end method

.method public setPwdId(I)V
    .locals 0
    .parameter "pwdId"

    .prologue
    iput p1, p0, Landroid/nfc/wps/PasswordToken;->mPwdId:I

    return-void
.end method

.method public setVendorEx([B)V
    .locals 0
    .parameter "vendorEx"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/PasswordToken;->mVendorEx:[B

    return-void
.end method

.method public testPrint()V
    .locals 0

    .prologue
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const-string v0, "PasswordToken"

    const-string v1, "writeToParcel is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/nfc/wps/PasswordToken;->mPwdId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const-string v0, "PasswordToken"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPwdId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nfc/wps/PasswordToken;->mPwdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mPublicKeyHash:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mPublicKeyHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mDevicePwd:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mDevicePwd:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mVendorId:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mVendorId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mVendorEx:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/PasswordToken;->mVendorEx:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

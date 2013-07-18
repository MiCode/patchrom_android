.class public Landroid/nfc/wps/WpsCredential;
.super Ljava/lang/Object;
.source "WpsCredential.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field static final TAG:Ljava/lang/String; = "WpsCredential"

.field public static WPS_CREDENTIALATTRIBUTE_ID_NETWORK_KEY:[B

.field public static WPS_CREDENTIAL_AP_CHANNEL:[B

.field public static WPS_CREDENTIAL_ATTRIBUTE_ID_AP_CHANNEL:[B

.field public static WPS_CREDENTIAL_ATTRIBUTE_ID_AUTHENTICATION_TYPE:[B

.field public static WPS_CREDENTIAL_ATTRIBUTE_ID_CRIDENTIAL:[B

.field public static WPS_CREDENTIAL_ATTRIBUTE_ID_ENCRYPTION_TYPE:[B

.field public static WPS_CREDENTIAL_ATTRIBUTE_ID_MAC_ADDRESS:[B

.field public static WPS_CREDENTIAL_ATTRIBUTE_ID_NETWORK_INDEX:[B

.field public static WPS_CREDENTIAL_ATTRIBUTE_ID_SSID:[B

.field public static WPS_CREDENTIAL_ATTRIBUTE_ID_VERSION:[B

.field public static WPS_CREDENTIAL_NETWORK_INDEX:B

.field public static WPS_CREDENTIAL_VENDOR_EXT:[B

.field public static WPS_CREDENTIAL_VERSION_10:B


# instance fields
.field private mApChannel:[B

.field private mAuthenticationType:S

.field private mEncryptionType:S

.field private mMacAddress:[B

.field private mNetworkIndex:B

.field private mNetworkKey:Ljava/lang/String;

.field private mSSID:Ljava/lang/String;

.field private mVendorExtension:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_ATTRIBUTE_ID_VERSION:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_ATTRIBUTE_ID_CRIDENTIAL:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_ATTRIBUTE_ID_NETWORK_INDEX:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_ATTRIBUTE_ID_SSID:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_ATTRIBUTE_ID_AUTHENTICATION_TYPE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_ATTRIBUTE_ID_ENCRYPTION_TYPE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIALATTRIBUTE_ID_NETWORK_KEY:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_ATTRIBUTE_ID_MAC_ADDRESS:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_8

    sput-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_ATTRIBUTE_ID_AP_CHANNEL:[B

    const/16 v0, 0x10

    sput-byte v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_VERSION_10:B

    new-array v0, v1, [B

    fill-array-data v0, :array_9

    sput-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_AP_CHANNEL:[B

    const/4 v0, 0x1

    sput-byte v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_NETWORK_INDEX:B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_VENDOR_EXT:[B

    new-instance v0, Landroid/nfc/wps/WpsCredential$1;

    invoke-direct {v0}, Landroid/nfc/wps/WpsCredential$1;-><init>()V

    sput-object v0, Landroid/nfc/wps/WpsCredential;->CREATOR:Landroid/os/Parcelable$Creator;

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
        0xet
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x10t
        0x26t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x10t
        0x45t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x10t
        0x3t
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0x10t
        0xft
    .end array-data

    nop

    :array_6
    .array-data 0x1
        0x10t
        0x27t
    .end array-data

    nop

    :array_7
    .array-data 0x1
        0x10t
        0x20t
    .end array-data

    nop

    :array_8
    .array-data 0x1
        0x10t
        0x1t
    .end array-data

    nop

    :array_9
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_a
    .array-data 0x1
        0x0t
        0x37t
        0x2at
        0x0t
        0x1t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WpsCredential"

    const-string v1, "    WpsCredential()  Construct set default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-byte v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_NETWORK_INDEX:B

    iput-byte v0, p0, Landroid/nfc/wps/WpsCredential;->mNetworkIndex:B

    sget-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_AP_CHANNEL:[B

    iput-object v0, p0, Landroid/nfc/wps/WpsCredential;->mApChannel:[B

    sget-object v0, Landroid/nfc/wps/WpsCredential;->WPS_CREDENTIAL_VENDOR_EXT:[B

    iput-object v0, p0, Landroid/nfc/wps/WpsCredential;->mVendorExtension:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/nfc/wps/WpsCredential;->mNetworkIndex:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/wps/WpsCredential;->mSSID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/nfc/wps/WpsCredential;->mAuthenticationType:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/nfc/wps/WpsCredential;->mEncryptionType:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/wps/WpsCredential;->mNetworkKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/WpsCredential;->mMacAddress:[B

    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mMacAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/WpsCredential;->mApChannel:[B

    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mApChannel:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/WpsCredential;->mVendorExtension:[B

    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mVendorExtension:[B

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

.method public getApChannel()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mApChannel:[B

    return-object v0
.end method

.method public getAuthType()S
    .locals 1

    .prologue
    iget-short v0, p0, Landroid/nfc/wps/WpsCredential;->mAuthenticationType:S

    return v0
.end method

.method public getEncrypType()S
    .locals 1

    .prologue
    iget-short v0, p0, Landroid/nfc/wps/WpsCredential;->mEncryptionType:S

    return v0
.end method

.method public getMacAddress()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mMacAddress:[B

    return-object v0
.end method

.method public getNetworkIndex()B
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/nfc/wps/WpsCredential;->mNetworkIndex:B

    return v0
.end method

.method public getNetworkKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mNetworkKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorExtension()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mVendorExtension:[B

    return-object v0
.end method

.method public setApChannel([B)V
    .locals 0
    .parameter "apChannel"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/WpsCredential;->mApChannel:[B

    return-void
.end method

.method public setAuthType(S)V
    .locals 0
    .parameter "authenticationType"

    .prologue
    iput-short p1, p0, Landroid/nfc/wps/WpsCredential;->mAuthenticationType:S

    return-void
.end method

.method public setEncrypType(S)V
    .locals 0
    .parameter "encryptionType"

    .prologue
    iput-short p1, p0, Landroid/nfc/wps/WpsCredential;->mEncryptionType:S

    return-void
.end method

.method public setMacAddress([B)V
    .locals 0
    .parameter "macAddress"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/WpsCredential;->mMacAddress:[B

    return-void
.end method

.method public setNetworkIndex(B)V
    .locals 0
    .parameter "networkIndex"

    .prologue
    iput-byte p1, p0, Landroid/nfc/wps/WpsCredential;->mNetworkIndex:B

    return-void
.end method

.method public setNetworkKey(Ljava/lang/String;)V
    .locals 0
    .parameter "networkKey"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/WpsCredential;->mNetworkKey:Ljava/lang/String;

    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "ssid"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/WpsCredential;->mSSID:Ljava/lang/String;

    return-void
.end method

.method public setVendorExtension([B)V
    .locals 0
    .parameter "vendorExtension"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/WpsCredential;->mVendorExtension:[B

    return-void
.end method

.method public testPrint()V
    .locals 0

    .prologue
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-byte v0, p0, Landroid/nfc/wps/WpsCredential;->mNetworkIndex:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-short v0, p0, Landroid/nfc/wps/WpsCredential;->mAuthenticationType:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v0, p0, Landroid/nfc/wps/WpsCredential;->mEncryptionType:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mNetworkKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mMacAddress:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mMacAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mApChannel:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mApChannel:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mVendorExtension:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/WpsCredential;->mVendorExtension:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

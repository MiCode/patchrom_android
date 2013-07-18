.class public Landroid/nfc/wps/ConfigurationToken;
.super Ljava/lang/Object;
.source "ConfigurationToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field static final TAG:Ljava/lang/String; = "ConfigurationToken"

.field public static mCONFIGURATIONTOKEN_VERSION_10:B

.field public static mCONFIGURATION_ATTRIBUTE_ID_AUTHENTICATION_TYPE:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_CRIDENTIAL:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_ENCRYPTION_TYPE:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_MAC_ADDRESS:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_NETWORK_INDEX:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_NETWORK_KEY:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_SSID:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_VERSION:[B


# instance fields
.field private mAuthenticationType:[B

.field private mEncryptionType:[B

.field private mMacAddress:[B

.field private mNetworkIndex:[B

.field private mNetworkKey:[B

.field private mSSID:[B

.field private mVendorExtension:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_VERSION:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_CRIDENTIAL:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_NETWORK_INDEX:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_SSID:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_AUTHENTICATION_TYPE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_ENCRYPTION_TYPE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_NETWORK_KEY:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_MAC_ADDRESS:[B

    const/16 v0, 0x10

    sput-byte v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATIONTOKEN_VERSION_10:B

    new-instance v0, Landroid/nfc/wps/ConfigurationToken$1;

    invoke-direct {v0}, Landroid/nfc/wps/ConfigurationToken$1;-><init>()V

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

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
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkIndex:[B

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkIndex:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mSSID:[B

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mSSID:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mAuthenticationType:[B

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mAuthenticationType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mEncryptionType:[B

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mEncryptionType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkKey:[B

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mMacAddress:[B

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mMacAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

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

.method public getAuthType()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mAuthenticationType:[B

    return-object v0
.end method

.method public getEncrypType()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mEncryptionType:[B

    return-object v0
.end method

.method public getMacAddress()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mMacAddress:[B

    return-object v0
.end method

.method public getNetworkIndex()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkIndex:[B

    return-object v0
.end method

.method public getNetworkKey()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkKey:[B

    return-object v0
.end method

.method public getSSID()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mSSID:[B

    return-object v0
.end method

.method public getVendorExtension()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    return-object v0
.end method

.method public setAuthType([B)V
    .locals 0
    .parameter "authenticationType"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mAuthenticationType:[B

    return-void
.end method

.method public setEncrypType([B)V
    .locals 0
    .parameter "encryptionType"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mEncryptionType:[B

    return-void
.end method

.method public setMacAddress([B)V
    .locals 0
    .parameter "macAddress"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mMacAddress:[B

    return-void
.end method

.method public setNetworkIndex([B)V
    .locals 0
    .parameter "networkIndex"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkIndex:[B

    return-void
.end method

.method public setNetworkKey([B)V
    .locals 0
    .parameter "networkKey"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkKey:[B

    return-void
.end method

.method public setSSID([B)V
    .locals 0
    .parameter "ssid"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mSSID:[B

    return-void
.end method

.method public setVendorExtension([B)V
    .locals 0
    .parameter "vendorExtension"

    .prologue
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

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
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkIndex:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkIndex:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mSSID:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mSSID:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mAuthenticationType:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mAuthenticationType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mEncryptionType:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mEncryptionType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkKey:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mMacAddress:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mMacAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

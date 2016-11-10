.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static MAX_BUF_SIZE:I


# instance fields
.field protected mData:[B

.field protected mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field protected mServiceType:I

.field protected mStatus:I

.field protected mTransId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x400

    sput v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->MAX_BUF_SIZE:I

    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .locals 0
    .param p1, "serviceType"    # I
    .param p2, "status"    # I
    .param p3, "transId"    # I
    .param p4, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p5, "data"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    iput p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    iput-object p4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object p5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    return-void
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hexStr2Bin(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .local v3, "sz":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .local v0, "b":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .end local v0    # "b":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p0, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .local v13, "respList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    const-string v15, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "args":[Ljava/lang/String;
    array-length v15, v8

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    const/4 v13, 0x0

    .end local v13    # "respList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_0
    :goto_0
    return-object v13

    .restart local v13    # "respList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_1
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .local v6, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v15, 0x1

    aget-object v14, v8, v15

    .local v14, "srcAddr":Ljava/lang/String;
    iput-object v14, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    const/4 v15, 0x3

    aget-object v15, v8, v15

    invoke-static {v15}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->hexStr2Bin(Ljava/lang/String;)[B

    move-result-object v9

    .local v9, "bin":[B
    if-nez v9, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    new-instance v10, Ljava/io/DataInputStream;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v10, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v10, "dis":Ljava/io/DataInputStream;
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->available()I

    move-result v15

    if-lez v15, :cond_0

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v15

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v16

    shl-int/lit8 v16, v16, 0x8

    add-int v15, v15, v16

    add-int/lit8 v12, v15, -0x3

    .local v12, "length":I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .local v3, "type":I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .local v5, "transId":I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .local v4, "status":I
    if-gez v12, :cond_4

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    if-nez v12, :cond_5

    if-nez v4, :cond_3

    new-instance v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v3    # "type":I
    .end local v4    # "status":I
    .end local v5    # "transId":I
    .end local v12    # "length":I
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-gtz v15, :cond_0

    const/4 v13, 0x0

    goto :goto_0

    .end local v11    # "e":Ljava/io/IOException;
    .restart local v3    # "type":I
    .restart local v4    # "status":I
    .restart local v5    # "transId":I
    .restart local v12    # "length":I
    :cond_5
    :try_start_1
    sget v15, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->MAX_BUF_SIZE:I

    if-le v12, v15, :cond_6

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    goto :goto_1

    :cond_6
    new-array v7, v12, [B

    .local v7, "data":[B
    invoke-virtual {v10, v7}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v15, 0x1

    if-ne v3, v15, :cond_7

    invoke-static {v4, v5, v6, v7}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    move-result-object v2

    .local v2, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getStatus()I

    move-result v15

    if-nez v15, :cond_3

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :cond_7
    const/4 v15, 0x2

    if-ne v3, v15, :cond_8

    invoke-static {v4, v5, v6, v7}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    move-result-object v2

    .restart local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    goto :goto_2

    .end local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :cond_8
    new-instance v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .local v0, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    iget v3, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getRawData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    return v0
.end method

.method public getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    return v0
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x11

    .local v0, "result":I
    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    add-int v0, v1, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    return v0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    goto :goto_1
.end method

.method public setSrcDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p1, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "serviceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    invoke-static {v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " srcAddr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.class final Landroid/bluetooth/le/ScanFilter$1;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanFilter;
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
        "Landroid/bluetooth/le/ScanFilter;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanFilter;
    .locals 16
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v1, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .local v1, "builder":Landroid/bluetooth/le/ScanFilter$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const-class v14, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .local v12, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v12}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const-class v14, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelUuid;

    .local v13, "uuidMask":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v12, v13}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .end local v12    # "uuid":Landroid/os/ParcelUuid;
    .end local v13    # "uuidMask":Landroid/os/ParcelUuid;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const-class v14, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .local v7, "servcieDataUuid":Landroid/os/ParcelUuid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "serviceDataLength":I
    new-array v8, v9, [B

    .local v8, "serviceData":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v1, v7, v8}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .end local v7    # "servcieDataUuid":Landroid/os/ParcelUuid;
    .end local v8    # "serviceData":[B
    .end local v9    # "serviceDataLength":I
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "manufacturerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "manufacturerDataLength":I
    new-array v2, v3, [B

    .local v2, "manufacturerData":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v1, v6, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .end local v2    # "manufacturerData":[B
    .end local v3    # "manufacturerDataLength":I
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v14

    return-object v14

    .end local v6    # "manufacturerId":I
    .restart local v7    # "servcieDataUuid":Landroid/os/ParcelUuid;
    .restart local v8    # "serviceData":[B
    .restart local v9    # "serviceDataLength":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "serviceDataMaskLength":I
    new-array v10, v11, [B

    .local v10, "serviceDataMask":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v1, v7, v8, v10}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    goto :goto_0

    .end local v7    # "servcieDataUuid":Landroid/os/ParcelUuid;
    .end local v8    # "serviceData":[B
    .end local v9    # "serviceDataLength":I
    .end local v10    # "serviceDataMask":[B
    .end local v11    # "serviceDataMaskLength":I
    .restart local v2    # "manufacturerData":[B
    .restart local v3    # "manufacturerDataLength":I
    .restart local v6    # "manufacturerId":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "manufacturerDataMaskLength":I
    new-array v4, v5, [B

    .local v4, "manufacturerDataMask":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v1, v6, v2, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/le/ScanFilter;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/bluetooth/le/ScanFilter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/ScanFilter$1;->newArray(I)[Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    return-object v0
.end method

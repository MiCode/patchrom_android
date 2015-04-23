.class final Landroid/bluetooth/le/AdvertiseData$1;
.super Ljava/lang/Object;
.source "AdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseData;
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
        "Landroid/bluetooth/le/AdvertiseData;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;
    .locals 16
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v1, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .local v1, "builder":Landroid/bluetooth/le/AdvertiseData$Builder;
    const-class v14, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v13

    .local v13, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    if-eqz v13, :cond_0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .local v12, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v12}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v12    # "uuid":Landroid/os/ParcelUuid;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "manufacturerSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "manufacturerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "manufacturerDataLength":I
    new-array v4, v5, [B

    .local v4, "manufacturerData":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v1, v6, v4}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .end local v4    # "manufacturerData":[B
    .end local v5    # "manufacturerDataLength":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v6    # "manufacturerId":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "serviceDataSize":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_4

    const-class v14, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    .local v11, "serviceDataUuid":Landroid/os/ParcelUuid;
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

    invoke-virtual {v1, v11, v8}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .end local v8    # "serviceData":[B
    .end local v9    # "serviceDataLength":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v11    # "serviceDataUuid":Landroid/os/ParcelUuid;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v1, v14}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    const/4 v14, 0x1

    :goto_4
    invoke-virtual {v1, v14}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-virtual {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v14

    return-object v14

    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    goto :goto_4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/le/AdvertiseData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/bluetooth/le/AdvertiseData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->newArray(I)[Landroid/bluetooth/le/AdvertiseData;

    move-result-object v0

    return-object v0
.end method

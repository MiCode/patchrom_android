.class final Landroid/net/wifi/ScanSettings$1;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanSettings;
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
        "Landroid/net/wifi/ScanSettings;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanSettings;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Landroid/net/wifi/ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/ScanSettings;-><init>()V

    .local v0, "settings":Landroid/net/wifi/ScanSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "size":I
    if-lez v1, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    move v2, v1

    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "size":I
    .restart local v1    # "size":I
    if-lez v2, :cond_0

    iget-object v3, v0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    sget-object v4, Landroid/net/wifi/WifiChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v1

    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0

    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/ScanSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/wifi/ScanSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanSettings$1;->newArray(I)[Landroid/net/wifi/ScanSettings;

    move-result-object v0

    return-object v0
.end method

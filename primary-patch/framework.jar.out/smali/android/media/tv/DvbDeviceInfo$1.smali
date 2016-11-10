.class final Landroid/media/tv/DvbDeviceInfo$1;
.super Ljava/lang/Object;
.source "DvbDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/DvbDeviceInfo;
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
        "Landroid/media/tv/DvbDeviceInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/DvbDeviceInfo;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Landroid/media/tv/DvbDeviceInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Landroid/media/tv/DvbDeviceInfo;-><init>(Landroid/os/Parcel;Landroid/media/tv/DvbDeviceInfo$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DvbDeviceInfo"

    const-string v3, "Exception creating DvbDeviceInfo from parcel"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/tv/DvbDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/DvbDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/tv/DvbDeviceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/media/tv/DvbDeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/tv/DvbDeviceInfo$1;->newArray(I)[Landroid/media/tv/DvbDeviceInfo;

    move-result-object v0

    return-object v0
.end method

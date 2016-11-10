.class public final Landroid/media/tv/DvbDeviceInfo;
.super Ljava/lang/Object;
.source "DvbDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "DvbDeviceInfo"


# instance fields
.field private final mAdapterId:I

.field private final mDeviceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/media/tv/DvbDeviceInfo$1;

    invoke-direct {v0}, Landroid/media/tv/DvbDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/DvbDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "adapterId"    # I
    .param p2, "deviceId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    iput p2, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/DvbDeviceInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/tv/DvbDeviceInfo$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/DvbDeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapterId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

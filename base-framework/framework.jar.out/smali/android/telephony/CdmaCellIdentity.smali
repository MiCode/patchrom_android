.class public final Landroid/telephony/CdmaCellIdentity;
.super Landroid/telephony/CellIdentity;
.source "CdmaCellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CdmaCellIdentity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBasestationId:I

.field private final mLatitude:I

.field private final mLongitude:I

.field private final mNetworkId:I

.field private final mSystemId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/telephony/CdmaCellIdentity$1;

    invoke-direct {v0}, Landroid/telephony/CdmaCellIdentity$1;-><init>()V

    sput-object v0, Landroid/telephony/CdmaCellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 1
    .parameter "nid"
    .parameter "sid"
    .parameter "bid"
    .parameter "lon"
    .parameter "lat"
    .parameter "attr"

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Landroid/telephony/CellIdentity;-><init>(ILjava/lang/String;)V

    iput p1, p0, Landroid/telephony/CdmaCellIdentity;->mNetworkId:I

    iput p2, p0, Landroid/telephony/CdmaCellIdentity;->mSystemId:I

    iput p3, p0, Landroid/telephony/CdmaCellIdentity;->mBasestationId:I

    iput p4, p0, Landroid/telephony/CdmaCellIdentity;->mLongitude:I

    iput p5, p0, Landroid/telephony/CdmaCellIdentity;->mLatitude:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentity;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CdmaCellIdentity;->mNetworkId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CdmaCellIdentity;->mSystemId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CdmaCellIdentity;->mBasestationId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CdmaCellIdentity;->mLongitude:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CdmaCellIdentity;->mLatitude:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CdmaCellIdentity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CdmaCellIdentity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/telephony/CdmaCellIdentity;)V
    .locals 1
    .parameter "cid"

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentity;-><init>(Landroid/telephony/CellIdentity;)V

    iget v0, p1, Landroid/telephony/CdmaCellIdentity;->mNetworkId:I

    iput v0, p0, Landroid/telephony/CdmaCellIdentity;->mNetworkId:I

    iget v0, p1, Landroid/telephony/CdmaCellIdentity;->mSystemId:I

    iput v0, p0, Landroid/telephony/CdmaCellIdentity;->mSystemId:I

    iget v0, p1, Landroid/telephony/CdmaCellIdentity;->mBasestationId:I

    iput v0, p0, Landroid/telephony/CdmaCellIdentity;->mBasestationId:I

    iget v0, p1, Landroid/telephony/CdmaCellIdentity;->mLongitude:I

    iput v0, p0, Landroid/telephony/CdmaCellIdentity;->mLongitude:I

    iget v0, p1, Landroid/telephony/CdmaCellIdentity;->mLatitude:I

    iput v0, p0, Landroid/telephony/CdmaCellIdentity;->mLatitude:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getBasestationId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CdmaCellIdentity;->mBasestationId:I

    return v0
.end method

.method public getLatitude()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CdmaCellIdentity;->mLatitude:I

    return v0
.end method

.method public getLongitude()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CdmaCellIdentity;->mLongitude:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CdmaCellIdentity;->mNetworkId:I

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CdmaCellIdentity;->mSystemId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/telephony/CdmaCellIdentity;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CdmaCellIdentity;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CdmaCellIdentity;->mBasestationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CdmaCellIdentity;->mLongitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CdmaCellIdentity;->mLatitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

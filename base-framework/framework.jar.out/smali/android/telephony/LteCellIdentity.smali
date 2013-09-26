.class public final Landroid/telephony/LteCellIdentity;
.super Landroid/telephony/CellIdentity;
.source "LteCellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/LteCellIdentity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCi:I

.field private final mMcc:I

.field private final mMnc:I

.field private final mPci:I

.field private final mTac:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/telephony/LteCellIdentity$1;

    invoke-direct {v0}, Landroid/telephony/LteCellIdentity$1;-><init>()V

    sput-object v0, Landroid/telephony/LteCellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 1
    .parameter "mcc"
    .parameter "mnc"
    .parameter "ci"
    .parameter "pci"
    .parameter "tac"
    .parameter "attr"

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Landroid/telephony/CellIdentity;-><init>(ILjava/lang/String;)V

    iput p1, p0, Landroid/telephony/LteCellIdentity;->mMcc:I

    iput p2, p0, Landroid/telephony/LteCellIdentity;->mMnc:I

    iput p3, p0, Landroid/telephony/LteCellIdentity;->mCi:I

    iput p4, p0, Landroid/telephony/LteCellIdentity;->mPci:I

    iput p5, p0, Landroid/telephony/LteCellIdentity;->mTac:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentity;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LteCellIdentity;->mMcc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LteCellIdentity;->mMnc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LteCellIdentity;->mCi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LteCellIdentity;->mPci:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LteCellIdentity;->mTac:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/LteCellIdentity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/LteCellIdentity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/telephony/LteCellIdentity;)V
    .locals 1
    .parameter "cid"

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentity;-><init>(Landroid/telephony/CellIdentity;)V

    iget v0, p1, Landroid/telephony/LteCellIdentity;->mMcc:I

    iput v0, p0, Landroid/telephony/LteCellIdentity;->mMcc:I

    iget v0, p1, Landroid/telephony/LteCellIdentity;->mMnc:I

    iput v0, p0, Landroid/telephony/LteCellIdentity;->mMnc:I

    iget v0, p1, Landroid/telephony/LteCellIdentity;->mCi:I

    iput v0, p0, Landroid/telephony/LteCellIdentity;->mCi:I

    iget v0, p1, Landroid/telephony/LteCellIdentity;->mPci:I

    iput v0, p0, Landroid/telephony/LteCellIdentity;->mPci:I

    iget v0, p1, Landroid/telephony/LteCellIdentity;->mTac:I

    iput v0, p0, Landroid/telephony/LteCellIdentity;->mTac:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCi()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/LteCellIdentity;->mCi:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/LteCellIdentity;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/LteCellIdentity;->mMnc:I

    return v0
.end method

.method public getPci()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/LteCellIdentity;->mPci:I

    return v0
.end method

.method public getTac()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/LteCellIdentity;->mTac:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/telephony/LteCellIdentity;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/LteCellIdentity;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/LteCellIdentity;->mCi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/LteCellIdentity;->mPci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/LteCellIdentity;->mTac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

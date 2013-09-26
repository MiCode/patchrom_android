.class public abstract Landroid/telephony/CellIdentity;
.super Ljava/lang/Object;
.source "CellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CELLID_TYPE_CDMA:I = 0x2

.field public static final CELLID_TYPE_GSM:I = 0x1

.field public static final CELLID_TYPE_LTE:I = 0x3


# instance fields
.field private mCellIdAttributes:Ljava/lang/String;

.field private mCellIdType:I


# direct methods
.method protected constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "attr"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/CellIdentity;->mCellIdType:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/CellIdentity;->mCellIdAttributes:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentity;->mCellIdType:I

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/CellIdentity;->mCellIdAttributes:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/telephony/CellIdentity;)V
    .locals 2
    .parameter "cid"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/telephony/CellIdentity;->mCellIdType:I

    iput v0, p0, Landroid/telephony/CellIdentity;->mCellIdType:I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/CellIdentity;->mCellIdAttributes:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/CellIdentity;->mCellIdAttributes:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCellIdAttributes()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mCellIdAttributes:Ljava/lang/String;

    return-object v0
.end method

.method public getCellIdType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentity;->mCellIdType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentity;->mCellIdType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mCellIdAttributes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

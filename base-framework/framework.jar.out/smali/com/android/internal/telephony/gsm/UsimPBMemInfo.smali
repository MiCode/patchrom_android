.class public Lcom/android/internal/telephony/gsm/UsimPBMemInfo;
.super Ljava/lang/Object;
.source "UsimPBMemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPBMemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_NOT_SET:I = -0x1

.field public static final STRING_NOT_SET:Ljava/lang/String; = ""


# instance fields
.field private mAasLength:I

.field private mAasTotal:I

.field private mAasType:I

.field private mAasUsed:I

.field private mAdnLength:I

.field private mAdnTotal:I

.field private mAdnType:I

.field private mAdnUsed:I

.field private mAnrLength:I

.field private mAnrTotal:I

.field private mAnrType:I

.field private mAnrUsed:I

.field private mCcpLength:I

.field private mCcpTotal:I

.field private mCcpType:I

.field private mCcpUsed:I

.field private mEmailLength:I

.field private mEmailTotal:I

.field private mEmailType:I

.field private mEmailUsed:I

.field private mExt1Length:I

.field private mExt1Total:I

.field private mExt1Type:I

.field private mExt1Used:I

.field private mGasLength:I

.field private mGasTotal:I

.field private mGasType:I

.field private mGasUsed:I

.field private mSliceIndex:I

.field private mSneLength:I

.field private mSneTotal:I

.field private mSneType:I

.field private mSneUsed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/UsimPBMemInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSliceIndex:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnLength:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnType:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Length:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Type:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasLength:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasType:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrLength:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrType:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasLength:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasUsed:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasTotal:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasType:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneLength:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneUsed:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneTotal:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneType:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailLength:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailType:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpLength:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpUsed:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpTotal:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpType:I

    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/UsimPBMemInfo;
    .locals 2
    .parameter "source"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;-><init>()V

    .local v0, p:Lcom/android/internal/telephony/gsm/UsimPBMemInfo;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSliceIndex:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnLength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnType:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Length:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Type:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasLength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasType:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrLength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrType:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasLength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasUsed:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasTotal:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasType:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneLength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneUsed:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneTotal:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneType:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailLength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailType:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpLength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpUsed:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpTotal:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpType:I

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAasFree()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getAasLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasLength:I

    return v0
.end method

.method public getAasTotal()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasTotal:I

    return v0
.end method

.method public getAasType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasType:I

    return v0
.end method

.method public getAasUsed()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasUsed:I

    return v0
.end method

.method public getAdnFree()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getAdnLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnLength:I

    return v0
.end method

.method public getAdnTotal()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    return v0
.end method

.method public getAdnType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnType:I

    return v0
.end method

.method public getAdnUsed()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    return v0
.end method

.method public getAnrFree()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getAnrLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrLength:I

    return v0
.end method

.method public getAnrTotal()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    return v0
.end method

.method public getAnrType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrType:I

    return v0
.end method

.method public getAnrUsed()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    return v0
.end method

.method public getCcpFree()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCcpLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpLength:I

    return v0
.end method

.method public getCcpTotal()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpTotal:I

    return v0
.end method

.method public getCcpType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpType:I

    return v0
.end method

.method public getCcpUsed()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpUsed:I

    return v0
.end method

.method public getEmailFree()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEmailLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailLength:I

    return v0
.end method

.method public getEmailTotal()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    return v0
.end method

.method public getEmailType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailType:I

    return v0
.end method

.method public getEmailUsed()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    return v0
.end method

.method public getExt1Free()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getExt1Length()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Length:I

    return v0
.end method

.method public getExt1Total()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    return v0
.end method

.method public getExt1Type()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Type:I

    return v0
.end method

.method public getExt1Used()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    return v0
.end method

.method public getGasFree()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getGasLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasLength:I

    return v0
.end method

.method public getGasTotal()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    return v0
.end method

.method public getGasType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasType:I

    return v0
.end method

.method public getGasUsed()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    return v0
.end method

.method public getSliceIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSliceIndex:I

    return v0
.end method

.method public getSneFree()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneTotal:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneUsed:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSneLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneLength:I

    return v0
.end method

.method public getSneTotal()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneTotal:I

    return v0
.end method

.method public getSneType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneType:I

    return v0
.end method

.method public getSneUsed()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneUsed:I

    return v0
.end method

.method public setAasLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasLength:I

    return-void
.end method

.method public setAasTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasTotal:I

    return-void
.end method

.method public setAasType(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasType:I

    return-void
.end method

.method public setAasUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasUsed:I

    return-void
.end method

.method public setAdnLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnLength:I

    return-void
.end method

.method public setAdnTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    return-void
.end method

.method public setAdnType(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnType:I

    return-void
.end method

.method public setAdnUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    return-void
.end method

.method public setAnrLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrLength:I

    return-void
.end method

.method public setAnrTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    return-void
.end method

.method public setAnrType(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrType:I

    return-void
.end method

.method public setAnrUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    return-void
.end method

.method public setCcpLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpLength:I

    return-void
.end method

.method public setCcpTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpTotal:I

    return-void
.end method

.method public setCcpType(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpType:I

    return-void
.end method

.method public setCcpUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpUsed:I

    return-void
.end method

.method public setEmailLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailLength:I

    return-void
.end method

.method public setEmailTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    return-void
.end method

.method public setEmailType(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailType:I

    return-void
.end method

.method public setEmailUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    return-void
.end method

.method public setExt1Length(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Length:I

    return-void
.end method

.method public setExt1Total(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    return-void
.end method

.method public setExt1Type(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Type:I

    return-void
.end method

.method public setExt1Used(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    return-void
.end method

.method public setGasLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasLength:I

    return-void
.end method

.method public setGasTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    return-void
.end method

.method public setGasType(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasType:I

    return-void
.end method

.method public setGasUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    return-void
.end method

.method public setSliceIndex(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSliceIndex:I

    return-void
.end method

.method public setSneLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneLength:I

    return-void
.end method

.method public setSneTotal(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneTotal:I

    return-void
.end method

.method public setSneType(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneType:I

    return-void
.end method

.method public setSneUsed(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneUsed:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSliceIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSliceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdnLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdnUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdnTotal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAdnType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExt1Length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Length:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExt1Used:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExt1Total"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExt1Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Type:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGasLength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGasUsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGasTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGasType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAnrLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAnrUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAnrTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAnrType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmailLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmailUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmailTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmailType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "dest"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSliceIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAdnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Used:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mExt1Type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mGasType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAnrType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mAasType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mSneType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mEmailType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->mCcpType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPBMemInfo;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

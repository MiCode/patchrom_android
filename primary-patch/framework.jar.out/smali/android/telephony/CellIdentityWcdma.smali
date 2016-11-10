.class public final Landroid/telephony/CellIdentityWcdma;
.super Ljava/lang/Object;
.source "CellIdentityWcdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellIdentityWcdma"


# instance fields
.field private final mCid:I

.field private final mLac:I

.field private final mMcc:I

.field private final mMnc:I

.field private final mPsc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/telephony/CellIdentityWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I
    .param p5, "psc"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    iput p2, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    iput p3, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iput p4, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iput p5, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityWcdma$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellIdentityWcdma$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityWcdma;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityWcdma;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "CellIdentityWcdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityWcdma;
    .locals 1

    .prologue
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/telephony/CellIdentityWcdma;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Landroid/telephony/CellIdentityWcdma;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellIdentityWcdma;

    .local v0, "o":Landroid/telephony/CellIdentityWcdma;
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    return v0
.end method

.method public getPsc()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellIdentityWcdma:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

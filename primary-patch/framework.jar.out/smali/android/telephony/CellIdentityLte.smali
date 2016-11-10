.class public final Landroid/telephony/CellIdentityLte;
.super Ljava/lang/Object;
.source "CellIdentityLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellIdentityLte"


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
    new-instance v0, Landroid/telephony/CellIdentityLte$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "ci"    # I
    .param p4, "pci"    # I
    .param p5, "tac"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    iput p2, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    iput p3, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    iput p4, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    iput p5, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityLte$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellIdentityLte$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityLte;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityLte;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/telephony/CellIdentityLte;->mMcc:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    iget v0, p1, Landroid/telephony/CellIdentityLte;->mMnc:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    iget v0, p1, Landroid/telephony/CellIdentityLte;->mCi:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    iget v0, p1, Landroid/telephony/CellIdentityLte;->mPci:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    iget v0, p1, Landroid/telephony/CellIdentityLte;->mTac:I

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "CellIdentityLte"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityLte;
    .locals 1

    .prologue
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/telephony/CellIdentityLte;)V

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
    instance-of v3, p1, Landroid/telephony/CellIdentityLte;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellIdentityLte;

    .local v0, "o":Landroid/telephony/CellIdentityLte;
    iget v3, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    iget v4, v0, Landroid/telephony/CellIdentityLte;->mMcc:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    iget v4, v0, Landroid/telephony/CellIdentityLte;->mMnc:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    iget v4, v0, Landroid/telephony/CellIdentityLte;->mCi:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    iget v4, v0, Landroid/telephony/CellIdentityLte;->mPci:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    iget v4, v0, Landroid/telephony/CellIdentityLte;->mTac:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCi()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    return v0
.end method

.method public getPci()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    return v0
.end method

.method public getTac()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellIdentityLte:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

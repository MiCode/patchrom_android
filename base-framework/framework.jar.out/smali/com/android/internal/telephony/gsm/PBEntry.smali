.class public Lcom/android/internal/telephony/gsm/PBEntry;
.super Ljava/lang/Object;
.source "PBEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/PBEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_NOT_SET:I = -0x1

.field public static final STRING_NOT_SET:Ljava/lang/String; = ""


# instance fields
.field private mAdnumber:Ljava/lang/String;

.field private mAdtype:I

.field private mEmail:Ljava/lang/String;

.field private mGroup:Ljava/lang/String;

.field private mHidden:I

.field private mIndex1:I

.field private mNumber:Ljava/lang/String;

.field private mSecondtext:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/PBEntry$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/PBEntry$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/PBEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mIndex1:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mHidden:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdtype:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    return-void
.end method

.method public static reateFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/PBEntry;
    .locals 2
    .parameter "source"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/PBEntry;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/PBEntry;-><init>()V

    .local v0, p:Lcom/android/internal/telephony/gsm/PBEntry;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mIndex1:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mType:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mHidden:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdtype:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAdnumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAdtype()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdtype:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getHidden()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mHidden:I

    return v0
.end method

.method public getIndex1()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mIndex1:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondtext()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mType:I

    return v0
.end method

.method public setAdnumber(Ljava/lang/String;)V
    .locals 0
    .parameter "sAdnumber"

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setAdtype(I)V
    .locals 0
    .parameter "iAdtype"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdtype:I

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "sEmail"

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "sGroup"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    return-void
.end method

.method public setHidden(I)V
    .locals 0
    .parameter "iHidden"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mHidden:I

    return-void
.end method

.method public setIndex1(I)V
    .locals 0
    .parameter "iIndex1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mIndex1:I

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "sNumber"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public setSecondtext(Ljava/lang/String;)V
    .locals 0
    .parameter "sSecondtext"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "sText"

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "iType"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mType:I

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

    const-string v1, ", index1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mIndex1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", group:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adnumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondtext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

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
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mIndex1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mAdtype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/PBEntry;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.class public final Landroid/media/AudioFocusInfo;
.super Ljava/lang/Object;
.source "AudioFocusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttributes:Landroid/media/AudioAttributes;

.field private mClientId:Ljava/lang/String;

.field private mFlags:I

.field private mGainRequest:I

.field private mLossReceived:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/media/AudioFocusInfo$1;

    invoke-direct {v0}, Landroid/media/AudioFocusInfo$1;-><init>()V

    sput-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "gainRequest"    # I
    .param p5, "lossReceived"    # I
    .param p6, "flags"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .end local p1    # "aa":Landroid/media/AudioAttributes;
    :cond_0
    iput-object p1, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "clientId":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    if-nez p3, :cond_2

    const-string p3, ""

    .end local p3    # "packageName":Ljava/lang/String;
    :cond_2
    iput-object p3, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    iput p4, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    iput p5, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    iput p6, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    return-void
.end method


# virtual methods
.method public clearLossReceived()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/media/AudioFocusInfo;

    .local v0, "other":Landroid/media/AudioFocusInfo;
    iget-object v3, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v4, v0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    iget v3, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    iget v4, v0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget v3, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    iget v4, v0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    iget v3, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    iget v4, v0, Landroid/media/AudioFocusInfo;->mFlags:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    return v0
.end method

.method public getGainRequest()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    return v0
.end method

.method public getLossReceived()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

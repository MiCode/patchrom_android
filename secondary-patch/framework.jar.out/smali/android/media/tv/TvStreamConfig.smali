.class public Landroid/media/tv/TvStreamConfig;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvStreamConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_TYPE_BUFFER_PRODUCER:I = 0x2

.field public static final STREAM_TYPE_INDEPENDENT_VIDEO_SOURCE:I = 0x1

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mGeneration:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mStreamId:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/tv/TvStreamConfig;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/media/tv/TvStreamConfig$1;

    invoke-direct {v0}, Landroid/media/tv/TvStreamConfig$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvStreamConfig$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/tv/TvStreamConfig$1;

    .prologue
    invoke-direct {p0}, Landroid/media/tv/TvStreamConfig;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvStreamConfig;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    return p1
.end method

.method static synthetic access$202(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvStreamConfig;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    return p1
.end method

.method static synthetic access$302(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvStreamConfig;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    return p1
.end method

.method static synthetic access$402(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvStreamConfig;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    return p1
.end method

.method static synthetic access$502(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvStreamConfig;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Landroid/media/tv/TvStreamConfig;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/media/tv/TvStreamConfig;

    .local v0, "config":Landroid/media/tv/TvStreamConfig;
    iget v2, v0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/media/tv/TvStreamConfig;->mType:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getGeneration()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    return v0
.end method

.method public getStreamId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TvStreamConfig {mStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mGeneration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

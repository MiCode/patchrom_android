.class public final Landroid/media/PlaybackParams;
.super Ljava/lang/Object;
.source "PlaybackParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AUDIO_FALLBACK_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_FALLBACK_MODE_FAIL:I = 0x2

.field public static final AUDIO_FALLBACK_MODE_MUTE:I = 0x1

.field public static final AUDIO_STRETCH_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_STRETCH_MODE_VOICE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/PlaybackParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_AUDIO_FALLBACK_MODE:I = 0x4

.field private static final SET_AUDIO_STRETCH_MODE:I = 0x8

.field private static final SET_PITCH:I = 0x2

.field private static final SET_SPEED:I = 0x1


# instance fields
.field private mAudioFallbackMode:I

.field private mAudioStretchMode:I

.field private mPitch:F

.field private mSet:I

.field private mSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/media/PlaybackParams$1;

    invoke-direct {v0}, Landroid/media/PlaybackParams$1;-><init>()V

    sput-object v0, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    iput v1, p0, Landroid/media/PlaybackParams;->mPitch:F

    iput v1, p0, Landroid/media/PlaybackParams;->mSpeed:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    iput v2, p0, Landroid/media/PlaybackParams;->mPitch:F

    iput v2, p0, Landroid/media/PlaybackParams;->mSpeed:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Landroid/media/PlaybackParams;->mPitch:F

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/PlaybackParams$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/PlaybackParams$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/PlaybackParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public allowDefaults()Landroid/media/PlaybackParams;
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioFallbackMode()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audio fallback mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    return v0
.end method

.method public getAudioStretchMode()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audio stretch mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    return v0
.end method

.method public getPitch()F
    .locals 2

    .prologue
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pitch not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    return v0
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "speed not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    return v0
.end method

.method public setAudioFallbackMode(I)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "audioFallbackMode"    # I

    .prologue
    iput p1, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    return-object p0
.end method

.method public setAudioStretchMode(I)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "audioStretchMode"    # I

    .prologue
    iput p1, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    return-object p0
.end method

.method public setPitch(F)Landroid/media/PlaybackParams;
    .locals 2
    .param p1, "pitch"    # F

    .prologue
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pitch must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/media/PlaybackParams;->mPitch:F

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    return-object p0
.end method

.method public setSpeed(F)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "speed"    # F

    .prologue
    iput p1, p0, Landroid/media/PlaybackParams;->mSpeed:F

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

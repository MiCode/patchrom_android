.class public Landroid/telecom/VideoProfile;
.super Ljava/lang/Object;
.source "VideoProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoProfile$CameraCapabilities;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/VideoProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUALITY_DEFAULT:I = 0x4

.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_LOW:I = 0x3

.field public static final QUALITY_MEDIUM:I = 0x2

.field public static final QUALITY_UNKNOWN:I = 0x0

.field public static final STATE_AUDIO_ONLY:I = 0x0

.field public static final STATE_BIDIRECTIONAL:I = 0x3

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_RX_ENABLED:I = 0x2

.field public static final STATE_TX_ENABLED:I = 0x1


# instance fields
.field private final mQuality:I

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/telecom/VideoProfile$1;

    invoke-direct {v0}, Landroid/telecom/VideoProfile$1;-><init>()V

    sput-object v0, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "videoState"    # I

    .prologue
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "videoState"    # I
    .param p2, "quality"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    iput p2, p0, Landroid/telecom/VideoProfile;->mQuality:I

    return-void
.end method

.method private static hasState(II)Z
    .locals 1
    .param p0, "videoState"    # I
    .param p1, "state"    # I

    .prologue
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAudioOnly(I)Z
    .locals 2
    .param p0, "videoState"    # I

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBidirectional(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isPaused(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isReceptionEnabled(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isTransmissionEnabled(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isVideo(I)Z
    .locals 2
    .param p0, "videoState"    # I

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-static {p0, v1}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static videoStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "videoState"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " Only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " Tx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " Rx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " Pause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telecom/VideoProfile;->mQuality:I

    return v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[VideoProfile videoState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " videoQuality = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telecom/VideoProfile;->mQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

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
    iget v0, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telecom/VideoProfile;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class public Landroid/media/AudioMixPort;
.super Landroid/media/AudioPort;
.source "AudioMixPort.java"


# instance fields
.field private final mIoHandle:I


# direct methods
.method constructor <init>(Landroid/media/AudioHandle;IILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V
    .locals 9
    .param p1, "handle"    # Landroid/media/AudioHandle;
    .param p2, "ioHandle"    # I
    .param p3, "role"    # I
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "samplingRates"    # [I
    .param p6, "channelMasks"    # [I
    .param p7, "channelIndexMasks"    # [I
    .param p8, "formats"    # [I
    .param p9, "gains"    # [Landroid/media/AudioGain;

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V

    iput p2, p0, Landroid/media/AudioMixPort;->mIoHandle:I

    return-void
.end method


# virtual methods
.method public buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioMixPortConfig;
    .locals 6
    .param p1, "samplingRate"    # I
    .param p2, "channelMask"    # I
    .param p3, "format"    # I
    .param p4, "gain"    # Landroid/media/AudioGainConfig;

    .prologue
    new-instance v0, Landroid/media/AudioMixPortConfig;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioMixPortConfig;-><init>(Landroid/media/AudioMixPort;IIILandroid/media/AudioGainConfig;)V

    return-object v0
.end method

.method public bridge synthetic buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioMixPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioMixPortConfig;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/media/AudioMixPort;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/AudioMixPort;

    .local v0, "other":Landroid/media/AudioMixPort;
    iget v2, p0, Landroid/media/AudioMixPort;->mIoHandle:I

    invoke-virtual {v0}, Landroid/media/AudioMixPort;->ioHandle()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-super {p0, p1}, Landroid/media/AudioPort;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public ioHandle()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioMixPort;->mIoHandle:I

    return v0
.end method

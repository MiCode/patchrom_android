.class public Landroid/media/AudioMixPortConfig;
.super Landroid/media/AudioPortConfig;
.source "AudioMixPortConfig.java"


# direct methods
.method constructor <init>(Landroid/media/AudioMixPort;IIILandroid/media/AudioGainConfig;)V
    .locals 0
    .param p1, "mixPort"    # Landroid/media/AudioMixPort;
    .param p2, "samplingRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "format"    # I
    .param p5, "gain"    # Landroid/media/AudioGainConfig;

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    return-void
.end method


# virtual methods
.method public port()Landroid/media/AudioMixPort;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioMixPortConfig;->mPort:Landroid/media/AudioPort;

    check-cast v0, Landroid/media/AudioMixPort;

    return-object v0
.end method

.method public bridge synthetic port()Landroid/media/AudioPort;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/media/AudioMixPortConfig;->port()Landroid/media/AudioMixPort;

    move-result-object v0

    return-object v0
.end method

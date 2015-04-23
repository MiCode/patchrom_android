.class public Landroid/media/AudioDevicePortConfig;
.super Landroid/media/AudioPortConfig;
.source "AudioDevicePortConfig.java"


# direct methods
.method constructor <init>(Landroid/media/AudioDevicePort;IIILandroid/media/AudioGainConfig;)V
    .locals 0
    .param p1, "devicePort"    # Landroid/media/AudioDevicePort;
    .param p2, "samplingRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "format"    # I
    .param p5, "gain"    # Landroid/media/AudioGainConfig;

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    return-void
.end method

.method constructor <init>(Landroid/media/AudioDevicePortConfig;)V
    .locals 6
    .param p1, "config"    # Landroid/media/AudioDevicePortConfig;

    .prologue
    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->port()Landroid/media/AudioDevicePort;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->samplingRate()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->channelMask()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->format()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->gain()Landroid/media/AudioGainConfig;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioDevicePortConfig;-><init>(Landroid/media/AudioDevicePort;IIILandroid/media/AudioGainConfig;)V

    return-void
.end method


# virtual methods
.method public port()Landroid/media/AudioDevicePort;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioDevicePortConfig;->mPort:Landroid/media/AudioPort;

    check-cast v0, Landroid/media/AudioDevicePort;

    return-object v0
.end method

.method public bridge synthetic port()Landroid/media/AudioPort;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/media/AudioDevicePortConfig;->port()Landroid/media/AudioDevicePort;

    move-result-object v0

    return-object v0
.end method

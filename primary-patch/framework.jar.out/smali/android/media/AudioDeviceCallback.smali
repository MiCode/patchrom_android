.class public abstract Landroid/media/AudioDeviceCallback;
.super Ljava/lang/Object;
.source "AudioDeviceCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 0
    .param p1, "addedDevices"    # [Landroid/media/AudioDeviceInfo;

    .prologue
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 0
    .param p1, "removedDevices"    # [Landroid/media/AudioDeviceInfo;

    .prologue
    return-void
.end method

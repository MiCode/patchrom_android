.class public Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension;
.super Ljava/lang/Object;
.source "DefaultAudioProfileExtension.java"

# interfaces
.implements Lcom/mediatek/common/audioprofile/IAudioProfileExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;
    }
.end annotation


# instance fields
.field protected final IS_SUPPORT_OUTDOOR_EDITABLE:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension;->IS_SUPPORT_OUTDOOR_EDITABLE:Z

    return-void
.end method


# virtual methods
.method public getActiveProfileChangeInfo(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .locals 1
    .parameter "shouldSetRingerMode"
    .parameter "oldProfileKey"
    .parameter "newProfileKey"
    .parameter "customActiveProfileDeleted"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/mediatek/common/audioprofile/IAudioProfileService;Landroid/content/Context;)V
    .locals 0
    .parameter "service"
    .parameter "context"

    .prologue
    return-void
.end method

.method public onActiveProfileChange(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "shouldSetRingerMode"
    .parameter "oldProfileKey"
    .parameter "newProfileKey"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public onNotificationChange(Z)Z
    .locals 1
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onRingerModeChanged(I)Z
    .locals 1
    .parameter "newRingerMode"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onRingerVolumeChanged(IILjava/lang/String;)Z
    .locals 1
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "extra"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onRingtoneChange(Z)Z
    .locals 1
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public persistStreamVolumeToSystem(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCheckDefaultProfiles()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSyncGeneralRingtoneToOutdoor()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

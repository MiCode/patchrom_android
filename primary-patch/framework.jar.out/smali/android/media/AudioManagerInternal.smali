.class public abstract Landroid/media/AudioManagerInternal;
.super Ljava/lang/Object;
.source "AudioManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManagerInternal$RingerModeDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract adjustStreamVolumeForUid(IIILjava/lang/String;I)V
.end method

.method public abstract adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V
.end method

.method public abstract getRingerModeInternal()I
.end method

.method public abstract getVolumeControllerUid()I
.end method

.method public abstract setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
.end method

.method public abstract setRingerModeInternal(ILjava/lang/String;)V
.end method

.method public abstract setStreamVolumeForUid(IIILjava/lang/String;I)V
.end method

.method public abstract updateRingerModeAffectedStreamsInternal()V
.end method

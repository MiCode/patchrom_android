.class public Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;
.super Ljava/lang/Object;
.source "DefaultAudioProfileExtension.java"

# interfaces
.implements Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveProfileChangeInfo"
.end annotation


# instance fields
.field public mRingerModeToUpdate:I

.field public mShouldOverrideSystem:Z

.field public mShouldSetLastActiveKey:Z

.field public mShouldSyncToSystem:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldOverrideSystem:Z

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mRingerModeToUpdate:I

    iput-boolean v1, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSetLastActiveKey:Z

    iput-boolean v1, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSyncToSystem:Z

    return-void
.end method


# virtual methods
.method public getRingerModeToUpdate()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mRingerModeToUpdate:I

    return v0
.end method

.method public setRingerModeToUpdate(I)V
    .locals 0
    .parameter "ringerModeToUpdate"

    .prologue
    iput p1, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mRingerModeToUpdate:I

    return-void
.end method

.method public setShouldOverrideSystem(Z)V
    .locals 0
    .parameter "shouldOverrideSystem"

    .prologue
    iput-boolean p1, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldOverrideSystem:Z

    return-void
.end method

.method public setShouldSetLastActiveKey(Z)V
    .locals 0
    .parameter "shouldSetLastActiveKey"

    .prologue
    iput-boolean p1, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSetLastActiveKey:Z

    return-void
.end method

.method public setShouldSyncToSystem(Z)V
    .locals 0
    .parameter "shouldSyncToSystem"

    .prologue
    iput-boolean p1, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSyncToSystem:Z

    return-void
.end method

.method public shouldOverrideSystem()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldOverrideSystem:Z

    return v0
.end method

.method public shouldSetLastActiveKey()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSetLastActiveKey:Z

    return v0
.end method

.method public shouldSyncToSystem()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/mediatek/op/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSyncToSystem:Z

    return v0
.end method

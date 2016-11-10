.class final Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioAutoInitiationAction.java"


# static fields
.field private static final STATE_WAITING_FOR_SYSTEM_AUDIO_MODE_STATUS:I = 0x1


# instance fields
.field private final mAvrAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput p2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    return-void
.end method

.method private canChangeSystemAudio()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const-class v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const-class v1, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleSystemAudioModeStatusMessage()V
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->canChangeSystemAudio()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Cannot change system audio mode in auto initiation action."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSystemAudioModeSetting()Z

    move-result v0

    .local v0, "systemAudioModeSetting":Z
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    iget v3, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->finish()V

    goto :goto_0
.end method

.method private handleSystemAudioModeStatusTimeout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSystemAudioModeSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->canChangeSystemAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    goto :goto_0
.end method

.method private sendGiveSystemAudioModeStatus()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->handleSystemAudioModeStatusTimeout()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    const/16 v3, 0x7e

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->handleSystemAudioModeStatusMessage()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method start()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->addTimer(II)V

    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->sendGiveSystemAudioModeStatus()V

    return v2
.end method

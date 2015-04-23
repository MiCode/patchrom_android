.class final Lcom/android/server/hdmi/SystemAudioActionFromTv;
.super Lcom/android/server/hdmi/SystemAudioAction;
.source "SystemAudioActionFromTv.java"


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2
    .param p1, "sourceAddress"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I
    .param p3, "targetStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/SystemAudioAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromTv;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    return-void
.end method


# virtual methods
.method start()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromTv;->removeSystemAudioActionInProgress()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromTv;->sendSystemAudioModeRequest()V

    const/4 v0, 0x1

    return v0
.end method

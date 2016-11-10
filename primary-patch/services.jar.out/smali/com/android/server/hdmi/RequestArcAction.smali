.class abstract Lcom/android/server/hdmi/RequestArcAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RequestArcAction.java"


# static fields
.field protected static final STATE_WATING_FOR_REQUEST_ARC_REQUEST_RESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RequestArcAction"


# instance fields
.field protected final mAvrAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 2
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    iput p2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    return-void
.end method


# virtual methods
.method protected final disableArcTransmission()V
    .locals 4

    .prologue
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/RequestArcAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method final handleTimerEvent(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    iget v0, p0, Lcom/android/server/hdmi/RequestArcAction;->mState:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "[T] RequestArcAction."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    goto :goto_0
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/hdmi/RequestArcAction;->mState:I

    if-ne v4, v2, :cond_0

    iget v4, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    const-string v5, "RequestArcAction"

    invoke-static {p1, v4, v5}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .local v0, "opcode":I
    packed-switch v0, :pswitch_data_0

    move v2, v3

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    aget-byte v4, v4, v3

    and-int/lit16 v1, v4, 0xff

    .local v1, "originalOpcode":I
    const/16 v4, 0xc4

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    goto :goto_0

    :cond_2
    const/16 v4, 0xc3

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
